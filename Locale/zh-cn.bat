@echo off
rem must call "setlocal enabledelayedexpansion" in main function

:main
rem this is a utility function file, don't run directly
if "%~1" == "" goto :eof
call :chkdelayexp
if !delayed! equ 0 goto :eof
call %1 %2 %3 %4 %5 %6 %7 %8 %9
goto :eof

:chkdelayexp
set exc=!
if "!!" == "!exc!!exc!" (
  set delayed=1
) else (
  set delayed=0
)
goto :eof

rem ///locale initializer///

:localeinit
rem main
set loc_title=ClashCMD ����̨ ?version?
set loc_menu_select=ѡ��
set loc_menu_choice=��ѡ����Ҫ�Ĳ�����
set loc_choice_YN=ȷ���밴Y��ȡ���밴N
set loc_done_anykey=����ɣ������������...
set loc_menu_cancel=��ѡ����ȡ����
set loc_open_dashboard=����������д����...
set loc_shutdown=���ڹرտ���̨...

rem core
set loc_core_getting_status=���ڻ�ȡ Clash ����״̬...
set loc_core_running=������
set loc_core_stopped=δ����
set loc_core_title=Clash ���Ĺ��� ��ǰ����״̬��?status?
set loc_core_already_running=Clash �����Ѿ��������ˡ�
set loc_core_starting=�������� Clash ����...
set loc_core_started=Clash ������������
set loc_core_already_stopped=Clash ���Ļ�δ���С�
set loc_core_terminating=���ڹر� Clash ����...
set loc_core_terminated=Clash �����ѹرա�
set loc_core_stop_before_start=��ǰ����δ���У�����������

set loc_core_saving_selection=���ڳ��Ա��� ?profile? �����ļ��Ĳ�����ѡ��...
set loc_core_fetch_status_failed=�޷���ȡ Clash ����ģʽ���������������������ԣ�

set loc_core_mode_global=ȫ��
set loc_core_mode_rule=����
set loc_core_mode_direct=ֱ��
set loc_core_mode_current=��ǰ Clash ����ģʽ��?mode?
set loc_core_mode_select=��ѡ��Ҫ�л�����ģʽ��
set loc_core_mode_set=������Ϊ ?mode? ģʽ...

set loc_core_allowlan_current=��ǰ Clash ���� ?allow? �������豸���롣
set loc_core_allowlan_true=����
set loc_core_allowlan_false=������
set loc_core_allowlan_select=��ѡ��Ҫ�л�����״̬��
set loc_core_allowlan_set=������Ϊ ?allow? �������豸���롣

set loc_profile_not_selected=δѡ��
set loc_profile_select_first=����ѡ�������ļ���

rem profile
set loc_profile=�����ļ�����  ��ǰ�����ļ���?profile?
set loc_profile_opt=��ѡ��������ļ��Ĳ�����

set loc_profile_add=���������ļ�
set loc_profile_add_suburl=�����붩�ĵ�ַ�����ӣ�������� "|" ������
set loc_profile_add_suburl_empty=δ���������ļ���������...
set loc_profile_add_subname=�����������ļ������������������ļ�������
set loc_profile_add_subname_empty=δ���������ļ�����������...
set loc_profile_add_subname_dup=�����������ļ����������������롣
set loc_profile_add_subname_space=�����в��ܺ��пո�
set loc_profile_add_convert=�Ƿ�ʹ�� SubConverter �������ļ� ?sub? ����ת����ע���粻ʹ�ã�������Ķ��ı����� Clash ���ġ�ʹ���밴Y����ʹ���밴N 
set loc_profile_add_success=���������ļ���?sub? ����ɣ�

set loc_profile_del=ɾ�������ļ�
set loc_profile_del_sure=��ȷ��Ҫɾ�������ļ� ?profile? ��
set loc_profile_del_msg=����ɾ�������ļ� ?profile?...

set loc_profile_select=ѡ�������ļ� ��?page?ҳ
set loc_profile_select_press_key=�밴��ѡ��ǰ������ֻ���ĸѡ��
set loc_profile_select_prev=��һҳ
set loc_profile_select_next=��һҳ
set loc_profile_select_back=�����ϼ��˵�
set loc_profile_select_choice=��ѡ���ѡ���ǣ�
set loc_profile_select_set=��ѡ���� ?profile? �����ļ���

set loc_profile_update=���������ļ�
set loc_profile_update_direct=���ڸ��� ?profile? �����ļ�...
set loc_profile_update_subcon=����ͨ�� SubConverter ת�������� ?profile? �����ļ�...
set loc_profile_update_failed=����ʧ�ܣ����鶩�ģ������������...
set loc_profile_update_success=������ɣ�

set loc_profile_apply=Ӧ�������ļ�
set loc_profile_apply_sure=�Ƿ�ȷ���������ļ� ?profile? Ӧ�õ� Clash ���ģ�ȷ���밴Y��ȡ���밴N 
set loc_profile_apply_pre=������...
set loc_profile_apply_on=����Ӧ�������ļ�...
set loc_profile_apply_failed=Ӧ�������ļ�ʧ�ܣ��������ɵ������ļ��������������...
set loc_profile_apply_restore=���ڳ��Իָ� ?profile? �Ĳ�����ѡ��...
set loc_profile_apply_done=������ɣ�
set loc_profile_apply_cancel=��ȡ��...

set loc_monitor=��ش��ڹ���
set loc_monitor_logs=Clash ��־
set loc_monitor_traffic=Clash ����

rem pref
set loc_pref=ƫ������
set loc_pref_select=��ѡ��Ҫ��������Ŀ��
set loc_pref_apply_on_startup=���� Clash ����ʱ�Զ�Ӧ�������ļ�
set loc_pref_enable_proxy_on_startup=���� Clash ����ʱ�Զ�����ϵͳ����
set loc_pref_disable_proxy_on_stop=ֹͣ Clash ����ʱ�Զ��ر�ϵͳ����
set loc_pref_update_on_add=���������ļ����Զ�����
set loc_pref_apply_on_add=���������ļ����Զ�Ӧ��
set loc_pref_update_on_select=ѡ�������ļ����Զ�����
set loc_pref_apply_on_select=ѡ�������ļ����Զ�Ӧ��
set loc_pref_apply_on_update=���������ļ����Զ�Ӧ��
set loc_pref_switch=?option?  ��ǰΪ ?sel?
set loc_pref_switch_enable=����
set loc_pref_switch_disable=����
set loc_pref_switch_back=�����ϼ��˵�
set loc_pref_switch_selected=��ѡ�� ?sel?��

rem advanced
set loc_advanced=�߼�ѡ��
set loc_advanced_select=��ѡ��Ҫ��������Ŀ��
set loc_advanced_enable_sysproxy_on=���ڿ���ϵͳ����...
set loc_advanced_enable_sysproxy_done=ϵͳ�����ѿ�����
set loc_advanced_disable_sysproxy_on=���ڹر�ϵͳ����...
set loc_advanced_disable_sysproxy_done=ϵͳ�����ѹرա�
set loc_advanced_geoip_updating=���ڸ��� GeoIP ���ݿ�...
set loc_advanced_geoip_done=���³ɹ���
goto :eof

:initoptions
call :arrinit "main_options"
call :arrinit "core_options"
call :arrinit "mode_options"
call :arrinit "allow_options"
call :arrinit "sub_options"
call :arrinit "mon_options"
call :arrinit "adv_options"
call :arrinit "setting_options"
call :arrappend "main_options" "Clash ���Ĺ���"
call :arrappend "main_options" "�����ļ�����"
call :arrappend "main_options" "�򿪿������"
call :arrappend "main_options" "ƫ������"
call :arrappend "main_options" "�߼�ѡ��"
call :arrappend "main_options" "��ش���"
call :arrappend "main_options" "�ر� ClashCMD"
call :arrappend "core_options" "���� Clash"
call :arrappend "core_options" "ֹͣ Clash"
call :arrappend "core_options" "�л�����ģʽ"
call :arrappend "core_options" "�л��������������"
call :arrappend "core_options" "�����ϼ��˵�"
call :arrappend "mode_options" "ȫ��"
call :arrappend "mode_options" "����"
call :arrappend "mode_options" "ֱ��"
call :arrappend "mode_options" "�����ϼ��˵�"
call :arrappend "sub_options"  "���������ļ�"
call :arrappend "sub_options"  "ѡ�������ļ�"
call :arrappend "sub_options"  "Ӧ�������ļ�"
call :arrappend "sub_options"  "���������ļ�"
call :arrappend "sub_options"  "ɾ�������ļ�"
call :arrappend "sub_options"  "�����ϼ��˵�"
call :arrappend "mon_options"  "����־����"
call :arrappend "mon_options"  "����������"
call :arrappend "mon_options"  "�����ϼ��˵�"
call :arrappend "adv_options"  "����ϵͳ����"
call :arrappend "adv_options"  "����ϵͳ����"
call :arrappend "adv_options"  "���� GeoIP ���ݿ�"
call :arrappend "adv_options"  "���ÿ�������"
call :arrappend "adv_options"  "UWP�ػ�"
call :arrappend "adv_options"  "�����ϼ��˵�"
call :arrappend "allow_options" "����������豸����"
call :arrappend "allow_options" "������������豸����"
call :arrappend "allow_options" "�����ϼ��˵�"
call :arrappend "setting_options" "���� Clash ����ʱ�Զ�Ӧ�������ļ�"
call :arrappend "setting_options" "���� Clash ����ʱ�Զ�����ϵͳ����"
call :arrappend "setting_options" "ֹͣ Clash ����ʱ�Զ��ر�ϵͳ����"
call :arrappend "setting_options" "���������ļ����Զ�����"
call :arrappend "setting_options" "���������ļ����Զ�Ӧ��"
call :arrappend "setting_options" "ѡ�������ļ����Զ�����"
call :arrappend "setting_options" "ѡ�������ļ����Զ�Ӧ��"
call :arrappend "setting_options" "���������ļ����Զ�Ӧ��"
call :arrappend "setting_options" "�����ϼ��˵�"
goto :eof

rem arrinit: %1: name
:arrinit
set arrname=%~1
set _count_!arrname!=-1
goto :eof

rem arrappend: %1: arrname %2: value
:arrappend
set arrname=%~1
set arrcount=!_count_%arrname%!
set /a arrcount=!arrcount!+1
set !arrname!!arrcount!=%~2
set _count_!arrname!=!arrcount!
goto :eof
