extends VehicleBody3D

#var DIR = OS.get_executable_path().get_base_dir()
#var interpreter_path = DIR.plus_file("PythonFiles/venv/bin/python3.11")
#var script_path = DIR.plus_file("PythonFiles/notif.py")
var steeringAngleValue = 0
@onready var flw
@onready var frw
@onready var brw
@onready var blw
@onready var text 
var http_request_in_progress = false

func _ready():
	#if !OS.has_feature("standalone"): # if NOT exported version
		#interpreter_path = ProjectSettings.globalize_path("res://PythonFiles/venv/bin/python3.11")
		#script_path = ProjectSettings.globalize_path("res://PythonFiles/notif.py")
	
	#var output = []
	#var err = OS.execute(interpreter_path, [script_path, "2"],true,output,true)
	#var err = OS.execute("pwd", [],true,output,true)
	#print(err)
	#print(output)
	text = get_node("Steering_Angle")
	flw = get_node("frontleftwheel")
	flw.set_use_as_traction(true)
	flw.set_use_as_steering(true)
	
	
	frw = get_node("frontrightwheel")
	frw.set_use_as_traction(true)
	frw.set_use_as_steering(true)
	
	brw = get_node("backrightwheel")
	brw.set_use_as_traction(true)
	
	blw = get_node("backleftwheel")
	blw.set_use_as_traction(true)
	
	
	
	
func _physics_process(delta):
	
	get_node("Steering_Angle").text = "Steering Angle = " + str(steering).substr(0,7)
	
	steering = Input.get_axis("right","left")*0.4
	#engine_force = Input.get_axis("back","forward")*200
	engine_force = 200
	
	
	#$HTTPRequest.request("http://anandgogoi.pythonanywhere.com/")
	if not http_request_in_progress:
		start_http_request()
		steeringAngleValue = steeringAngleValue + 1 
		text = str(steeringAngleValue)
		#get_node("Steering_Angle").text = str(steeringAngleValue)
	
	

func start_http_request():
	http_request_in_progress = true
	$HTTPRequest.request("http://anandgogoi.pythonanywhere.com/")

func _on_HTTPRequest_request_completed(result, response_code, headers, body):
	var test_json_conv = JSON.new()
	test_json_conv.parse(body.get_string_from_utf8())
	var json = test_json_conv.get_data()
	print(json)
	http_request_in_progress = false
	
	
	
