
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = /Users/ycchou/.rvm/rubies/ree-1.8.7-2012.02/lib/ruby/1.8/i686-darwin12.3.0
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
prefix = $(DESTDIR)/Users/ycchou/.rvm/rubies/ree-1.8.7-2012.02
exec_prefix = $(prefix)
sysconfdir = $(prefix)/etc
vendorlibdir = $(vendordir)/$(ruby_version)
sitearchdir = $(sitelibdir)/$(sitearch)
libexecdir = $(exec_prefix)/libexec
datarootdir = $(prefix)/share
bindir = $(exec_prefix)/bin
sitedir = $(libdir)/ruby/site_ruby
htmldir = $(docdir)
localedir = $(datarootdir)/locale
sbindir = $(exec_prefix)/sbin
docdir = $(datarootdir)/doc/$(PACKAGE)
archdir = $(rubylibdir)/$(arch)
rubylibdir = $(libdir)/ruby/$(ruby_version)
mandir = $(datarootdir)/man
pdfdir = $(docdir)
includedir = $(prefix)/include
localstatedir = $(prefix)/var
infodir = $(datarootdir)/info
datadir = $(datarootdir)
oldincludedir = $(DESTDIR)/usr/include
sharedstatedir = $(prefix)/com
sitelibdir = $(sitedir)/$(ruby_version)
vendordir = $(libdir)/ruby/vendor_ruby
libdir = $(exec_prefix)/lib
psdir = $(docdir)
dvidir = $(docdir)
vendorarchdir = $(vendorlibdir)/$(sitearch)

CC = /usr/local/bin/gcc-4.2
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = 
CFLAGS   =  -fno-common -g -O3 -I/usr/local/opt/libyaml/include -I/usr/local/opt/readline/include -I/usr/local/opt/libxml2/include -I/usr/local/opt/libxslt/include -I/usr/local/opt/libksba/include -I/usr/local/opt/openssl/include -I/usr/local/opt/sqlite/include  -fno-common -pipe -fno-common $(cflags) -Wall -O0 -ggdb 
INCFLAGS = $(PREINCFLAGS) -I. -I/opt/local/include -I$(topdir) -I$(hdrdir) -I$(srcdir)
DEFS     = 
CPPFLAGS = -DJSON_GENERATOR  -D_XOPEN_SOURCE -D_DARWIN_C_SOURCE $(DEFS) $(cppflags)
CXXFLAGS = $(CFLAGS) 
ldflags  = -L. -L/usr/local/opt/libyaml/lib -L/usr/local/opt/readline/lib -L/usr/local/opt/libxml2/lib -L/usr/local/opt/libxslt/lib -L/usr/local/opt/libksba/lib -L/usr/local/opt/openssl/lib -L/usr/local/opt/sqlite/lib
dldflags = 
archflag = 
DLDFLAGS = $(ldflags) $(dldflags) $(archflag)
LDSHARED = cc -dynamic -bundle -undefined suppress -flat_namespace
AR = ar
EXEEXT = 

RUBY_INSTALL_NAME = ruby
RUBY_SO_NAME = ruby
arch = i686-darwin12.3.0
sitearch = i686-darwin12.3.0
ruby_version = 1.8
ruby = /Users/ycchou/.rvm/rubies/ree-1.8.7-2012.02/bin/ruby
RUBY = $(ruby)
RM = rm -f
MAKEDIRS = mkdir -p
INSTALL = /usr/bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp

#### End of system configuration section. ####

preload = 

libpath = . $(libdir)
LIBPATH =  -L. -L$(libdir)
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 

extout = 
extout_prefix = 
target_prefix = /json/ext
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED)  -L/opt/local/lib -ldl -lobjc  
SRCS = generator.c
OBJS = generator.o
TARGET = generator
DLLIB = $(TARGET).bundle
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /Users/ycchou/projects/scholarship_board/vendor/bundle/gems/json-1.8.0/lib$(target_prefix)
RUBYARCHDIR = /Users/ycchou/projects/scholarship_board/vendor/bundle/gems/json-1.8.0/lib$(target_prefix)

TARGET_SO     = $(DLLIB)
CLEANLIBS     = $(TARGET).bundle $(TARGET).il? $(TARGET).tds $(TARGET).map
CLEANOBJS     = *.o *.a *.s[ol] *.pdb *.exp *.bak

all:		$(DLLIB)
static:		$(STATIC_LIB)

clean:
		@-$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES)

distclean:	clean
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)

realclean:	distclean
install: install-so install-rb

install-so: $(RUBYARCHDIR)
install-so: $(RUBYARCHDIR)/$(DLLIB)
$(RUBYARCHDIR)/$(DLLIB): $(DLLIB)
	$(INSTALL_PROG) $(DLLIB) $(RUBYARCHDIR)
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
$(RUBYARCHDIR):
	$(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .cxx .cpp .C .o

.cc.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cxx.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cpp.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.C.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.c.o:
	$(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) -c $<

$(DLLIB): $(OBJS) Makefile
	@-$(RM) $@
	$(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



###
generator.o: generator.c generator.h $(srcdir)/../fbuffer/fbuffer.h
