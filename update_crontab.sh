FIND_FILE="/scripts/docker/merged_list_file.sh"
FIND_STR="export_jd_cookies_acoolbook.sh"

# merged_list_file.sh定时任务加入cookies环境变量脚本
if ! [ `grep -c "$FIND_STR" $FIND_FILE` -ne '0' ];then
      sed -i 's/\/scripts\/logs\/auto_help_export\.log/\/scripts\/logs\/auto_help_export\.log \&\& \. \/scripts\/docker\/export_jd_cookies_acoolbook\.sh/g' $FIND_FILE
      ## 更新定时任务列表
      crontab $FIND_FILE
fi

