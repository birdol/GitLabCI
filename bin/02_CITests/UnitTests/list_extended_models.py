import os 
import argparse
import platform
import sys
from CheckPackages.sort_models import git_models
import glob
import fnmatch


class Extended_model(object):

	def __init__(self, package, library, DymolaVersion):
		self.package = package
		self.library = library
		self.DymolaVersion = DymolaVersion
	
	def list_regression_tests(self):
		### List all models, that have changed before			
		changed_model_list = Extended_model.list_changed_models(self)
		## List and compare all regression examples that have changed, but no changes in the used classes
		regression_model_list = Extended_model.list_changed_examples(self,changed_model_list)
		models_test_regression = []
		
		if platform.system()  == "Windows":
			_setEnvironmentVariables("PATH", os.path.join(os.path.abspath('.'), "Resources", "Library", "win32"))
			sys.path.insert(0, os.path.join('C:\\',
                            'Program Files',
                            'Dymola '+ self.DymolaVersion,
                            'Modelica',
                            'Library',
                            'python_interface',
                            'dymola.egg'))
			print("operating system Windows")
		else:
			print("operating system Linux")
			_setEnvironmentVariables("LD_LIBRARY_PATH", os.path.join(os.path.abspath('.'), "Resources", "Library", "linux32") + ":" +
								os.path.join(os.path.abspath('.'),"Resources","Library","linux64"))
			sys.path.insert(0, os.path.join('opt',
							'dymola-'+self.DymolaVersion+'-x86_64',
							'Modelica',
							'Library',
							'python_interface',
							'dymola.egg'))
		sys.path.append(os.path.join(os.path.abspath('.'), "..", "..", "BuildingsPy"))
	
	
		
		if len(regression_model_list) == 0:
			print("No modified regression models")
			exit(0)
		else:
			## Load AixLib Library
			DymolaVersion = self.DymolaVersion
			from dymola.dymola_interface import DymolaInterface
			from dymola.dymola_exception import DymolaException
			if platform.system()  == "Windows":
				dymola = DymolaInterface(showwindow=True)
			else:
				dymola = DymolaInterface(dymolapath="/usr/local/bin/dymola")
			
			# Load AixLib
			LibraryCheck = dymola.openModel(self.library)
			if LibraryCheck == True:
				print("Found AixLib Library and regression test starts")
			elif LibraryCheck == False:
				print("Library Path is wrong. Please Check Path of AixLib Library Path")
				exit(1)
			
			# Load ModelManagement
			if platform.system()  == "Windows":
				dymola.ExecuteCommand('cd("C:\Program Files\Dymola '+self.DymolaVersion+'\Modelica\Library\ModelManagement 1.1.8\package.moe");')
			else:
				dymola.ExecuteCommand('cd("/opt/dymola-'+self.DymolaVersion+'-x86_64/Modelica/Library/ModelManagement 1.1.8/package.moe");')
		
			### Modified regression examples 
			for l in regression_model_list:
				
				## Search for all used classes in the example
				## Start CheckLibrary in ModelManagement
				
				usedmodels = dymola.ExecuteCommand('ModelManagement.Structure.Instantiated.UsedModels("'+l+'");')
				#extendedmodels = dymola.ExecuteCommand('ModelManagement.Structure.AST.ExtendsInClass("'+l+'");')
				regression_model = Extended_model.compare_change_used_models(self,usedmodels,l,changed_model_list)
				if regression_model is None:
					continue
				elif len(regression_model) > 0:
					models_test_regression.append(regression_model)
			dymola.close()
		
		if len(models_test_regression) > 0: 
			print("These models have been changed and a regression test is started")
			for l in models_test_regression:
				print('Check Example "'+l+'"')
		
		return models_test_regression
	
	#def set_package(self):
		
	
	def list_used_model(self):
		result = Extended_model.extended_modelmanagement(self)
		usedmodels = result[0]
		extendedmodels = result[1]
		model_list = Extended_model.list_changed_models(self)
		return usedmodels, model_list
	
	def compare_change_used_models(self,usedmodel,regression_model,model_list):
		#result = Extended_model.list_used_model(self)
		#usedmodel = result[0]
		#changed_model_list = result[1]
		aixlib_used_model = []
		for i in usedmodel:
			lib = i.split(".")
			if lib[0] == "Modelica":
				continue
			if i == "Real":
				continue
			if i == "Integer":
				continue
			if i == "Boolean":
				continue
			### List all used models from aixlib library
			if i == regression_model:
				continue
			else:
				aixlib_used_model.append(i)
		# loop for used classes
		ErrorCount = 0
		for l in aixlib_used_model:
			## loop for changed models
			for i in model_list:
				## if changed model is a used model in a example a new regression test is not impossible
				if i == l:
					print("\nThe used models "+ l+" in the example "+ regression_model +" have changed.\n You have to adapt your .mos file under AixLib\Resources\Scripts\Dymola with your changed classes.") 
					ErrorCount = ErrorCount + 1
					continue
				else:
					continue
			
		if ErrorCount > 0:
			print("Cannot perform a new regression test.\nA used class in the example was changed.\nEither a new reference file must be created or the modified used class must be reset to its original state.")
		if ErrorCount == 0:
			return regression_model
		
	
	def list_changed_examples(self, changed_model_list):
		
		mos_list = []
		package = self.package.replace("AixLib.","")
		resource_file_path = "Resources"+os.sep+"Scripts"+os.sep+"Dymola"+os.sep+package 
		## Search for all .mos examples
		for subdir, dirs, files in os.walk(resource_file_path):
			for file in files:
				filepath = subdir + os.sep + file
				if filepath.endswith(".mos"):
					mos_list.append(filepath)
		### List all models, that have changed before			
		#changedmodel = Extended_model.list_changed_models(self)
		
		mos_list_model = []
		# list all .mos model in Aixlib form
		for i in mos_list:
			if i.find("Dymola")>-1:
				i = (i[i.find("Dymola"):i.find(".mos")])
				i = i.replace("Dymola","AixLib")
				i = i.replace(os.sep,".")
				mos_list_model.append(i)
				
		regression_model_list = []
		for l in mos_list_model:
			for i in changed_model_list:
				if l == i:
					regression_model_list.append(l)
		
		# Modified models are reproduced, which have also been stored as regression tests
		return regression_model_list
		
	def list_changed_models(self):
		list_path = ".."+os.sep+'bin'+os.sep+'03_WhiteLists'+os.sep+'changedmodels.txt'
	
		list_mo_models = git_models(".mo","AixLib",list_path) 
		model_list = list_mo_models.sort_mo_models()
		return model_list
	
	def extended_modelmanagement(self, regression_model_list):
		
		# Start CheckLibrary in ModelManagement
		usedmodels = dymola.ExecuteCommand('ModelManagement.Structure.Instantiated.UsedModels("'+regression_model_list+'");')
		extendedmodels = dymola.ExecuteCommand('ModelManagement.Structure.AST.ExtendsInClass("'+regression_model_list+'");')
		#Modelmanagement Commands
		#ModelManagement.Structure.AST.ExtendsInClass("AixLib.Airflow.AirHandlingUnit.Examples.AHU")
		#ModelManagement.Structure.AST.ComponentsInClass("AixLib.Airflow.AirHandlingUnit.Examples.AHU");
		#ModelManagement.Structure.Instantiated.UsedModels("Modelica.Mechanics.Rotational.Examples.CoupledClutches");
		dymola.close()
		return usedmodels, extendedmodels
		
### Add to the environemtn variable 'var' the value 'value'
def _setEnvironmentVariables(var,value):
	import os
	import platform
	
	if var in os.environ:
		if platform.system() == "Windows":
			os.environ[var] = value + ";" + os.environ[var]
		else:
			os.environ[var] = value + ":" + os.environ[var]
	else:
		os.environ[var] = value	

if  __name__ == '__main__':
	"""Parser"""
	# Configure the argument parser
	parser = argparse.ArgumentParser(description = "Check the Style of Packages")
	check_test_group = parser.add_argument_group("arguments to run check tests")
	check_test_group.add_argument("-t", "--tool", metavar="dymola",default="dymola", help="Tool for the Checking Tests. Set to Dymola")
	check_test_group.add_argument('-s',"--single-package",metavar="AixLib.Package", help="Test only the Modelica package AixLib.Package")
	check_test_group.add_argument("-p","--path", default=".", help = "Path where top-level package.mo of the library is located")
	check_test_group.add_argument("-DS", "--DymolaVersion",default="2020", help="Version of Dymola(Give the number e.g. 2020")
	
	# Parse the arguments
	args = parser.parse_args()
	
	from list_extended_models import Extended_model
	
	func_list_models = Extended_model(package = args.single_package,
									  library = args.path,
									  DymolaVersion = args.DymolaVersion)
	
	# Set path for python-dymola-interface: Operating System windows and linux
	## List Regression models
	func_list_models.list_regression_tests()
	#func_list_models.list_changed_examples()
	#func_list_models.compare_change_used_models()
	
	
	