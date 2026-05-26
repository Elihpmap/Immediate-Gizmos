@tool
extends EditorPlugin

##########################################################################

func _enable_plugin() -> void:
	assert(ProjectSettings.get_setting("application/run/main_loop_type") == "SceneTree", "To use ImmediateGizmos, the project main loop must be of type 'SceneTree'");
	EditorImmediateGizmos.plugin_enabled = true;

func _disable_plugin() -> void:
	EditorImmediateGizmos.plugin_enabled = false;
	EditorImmediateGizmos.already_warned_plugin_disabled = false;

func _build() -> bool:
	EditorImmediateGizmos.already_warned_plugin_disabled = false;
	return true;

##########################################################################
