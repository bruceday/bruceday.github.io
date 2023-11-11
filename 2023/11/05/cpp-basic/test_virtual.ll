; ModuleID = 'test.cpp'
source_filename = "test.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.Base = type { i32 (...)** }
%class.Child1 = type { %class.Base }

$_ZN4BaseC2Ev = comdat any

$_ZN6Child1C2Ev = comdat any

$_ZN4Base4ShowEv = comdat any

$_ZN6Child14ShowEv = comdat any

$_ZTV4Base = comdat any

$_ZTS4Base = comdat any

$_ZTI4Base = comdat any

$_ZTV6Child1 = comdat any

$_ZTS6Child1 = comdat any

$_ZTI6Child1 = comdat any

@_ZTV4Base = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI4Base to i8*), i8* bitcast (void (%class.Base*)* @_ZN4Base4ShowEv to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTS4Base = linkonce_odr dso_local constant [6 x i8] c"4Base\00", comdat, align 1
@_ZTI4Base = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @_ZTS4Base, i32 0, i32 0) }, comdat, align 8
@_ZTV6Child1 = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI6Child1 to i8*), i8* bitcast (void (%class.Child1*)* @_ZN6Child14ShowEv to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTS6Child1 = linkonce_odr dso_local constant [8 x i8] c"6Child1\00", comdat, align 1
@_ZTI6Child1 = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_ZTS6Child1, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI4Base to i8*) }, comdat, align 8

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %class.Base, align 8
  %3 = alloca %class.Child1, align 8
  store i32 0, i32* %1, align 4
  call void @_ZN4BaseC2Ev(%class.Base* %2) #2
  call void @_ZN6Child1C2Ev(%class.Child1* %3) #2
  call void @_ZN4Base4ShowEv(%class.Base* %2)
  call void @_ZN6Child14ShowEv(%class.Child1* %3)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4BaseC2Ev(%class.Base* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %class.Base*, align 8
  store %class.Base* %0, %class.Base** %2, align 8
  %3 = load %class.Base*, %class.Base** %2, align 8
  %4 = bitcast %class.Base* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV4Base, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN6Child1C2Ev(%class.Child1* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %class.Child1*, align 8
  store %class.Child1* %0, %class.Child1** %2, align 8
  %3 = load %class.Child1*, %class.Child1** %2, align 8
  %4 = bitcast %class.Child1* %3 to %class.Base*
  call void @_ZN4BaseC2Ev(%class.Base* %4) #2
  %5 = bitcast %class.Child1* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV6Child1, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %5, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4Base4ShowEv(%class.Base* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %class.Base*, align 8
  store %class.Base* %0, %class.Base** %2, align 8
  %3 = load %class.Base*, %class.Base** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN6Child14ShowEv(%class.Child1* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %class.Child1*, align 8
  store %class.Child1* %0, %class.Child1** %2, align 8
  %3 = load %class.Child1*, %class.Child1** %2, align 8
  ret void
}

attributes #0 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 11.1.0-++20211011094159+1fdec59bffc1-1~exp1~20211011214614.8"}
