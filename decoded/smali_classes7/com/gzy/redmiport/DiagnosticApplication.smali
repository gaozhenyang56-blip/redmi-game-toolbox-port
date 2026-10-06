.class public final Lcom/gzy/redmiport/DiagnosticApplication;
.super Landroid/app/Application;
.source "DiagnosticApplication.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 3

    .line 8
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 9
    invoke-static {p0}, Lcom/gzy/redmidiag/CrashReporter;->install(Landroid/content/Context;)V

    .line 10
    sget-object p1, Lcom/gzy/redmiport/PortRuntime;->bootstrapFailure:Ljava/lang/Throwable;

    if-eqz p1, :cond_11

    .line 11
    const-string p1, "Original Application construction"

    sget-object v0, Lcom/gzy/redmiport/PortRuntime;->bootstrapFailure:Ljava/lang/Throwable;

    invoke-static {p1, v0}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    :cond_11
    return-void
.end method
