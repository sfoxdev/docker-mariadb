#    Licensed under the Apache License, Version 2.0 (the "License"); you may
#    not use this file except in compliance with the License. You may obtain
#    a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#    WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
#    License for the specific language governing permissions and limitations
#    under the License.

FROM mariadb
MAINTAINER SFox Lviv <sfox.lviv@gmail.com>

COPY config/my.cnf /etc/mysql/my.cnf
COPY config/create_mariadb_admin_user.sh /create_mariadb_admin_user.sh
COPY config/run.sh /run.sh
RUN chmod 775 /*.sh

VOLUME ["/etc/mysql", "/var/lib/mysql"]

EXPOSE 3306

CMD ["/run.sh"]
