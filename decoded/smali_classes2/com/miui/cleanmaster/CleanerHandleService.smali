.class public Lcom/miui/cleanmaster/CleanerHandleService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/cleanmaster/CleanerHandleService$CleanerShortcutImpl2;,
        Lcom/miui/cleanmaster/CleanerHandleService$CleanerShortcutImpl;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/cleanmaster/ICleanerShortcut;

.field private b:Lcom/miui/cleaner/ICleanerShortcut;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/miui/cleanmaster/CleanerHandleService;->b()V

    return-void
.end method

.method private static b()V
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/shortcut/d$b;->d:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {v0, v1}, Lcom/miui/securityscan/shortcut/d;->q(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Lcom/miui/securityscan/shortcut/d;->c(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "miui.intent.action.CREATE_CLEANER_SHORTCUT"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/cleanmaster/CleanerHandleService;->b:Lcom/miui/cleaner/ICleanerShortcut;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    iget-object p1, p0, Lcom/miui/cleanmaster/CleanerHandleService;->a:Lcom/miui/cleanmaster/ICleanerShortcut;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lc4/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.cleaner"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/cleanmaster/CleanerHandleService$CleanerShortcutImpl2;

    invoke-direct {v0}, Lcom/miui/cleanmaster/CleanerHandleService$CleanerShortcutImpl2;-><init>()V

    iput-object v0, p0, Lcom/miui/cleanmaster/CleanerHandleService;->b:Lcom/miui/cleaner/ICleanerShortcut;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/cleanmaster/CleanerHandleService$CleanerShortcutImpl;

    invoke-direct {v0}, Lcom/miui/cleanmaster/CleanerHandleService$CleanerShortcutImpl;-><init>()V

    iput-object v0, p0, Lcom/miui/cleanmaster/CleanerHandleService;->a:Lcom/miui/cleanmaster/ICleanerShortcut;

    :goto_0
    return-void
.end method
