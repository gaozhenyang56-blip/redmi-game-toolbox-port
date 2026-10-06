.class public Lcom/miui/common/h;
.super Lmiuix/autodensity/k;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/autodensity/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/common/e;->a(Landroid/app/Application;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    :try_start_0
    invoke-static {p0}, Lmiuix/autodensity/AutoDensityConfig;->init(Landroid/app/Application;)Lmiuix/autodensity/AutoDensityConfig;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MIUIX AutoDensity bootstrap"

    invoke-static {v1, v0}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
