.class public Lcom/miui/cleanmaster/CleanerHandleService$CleanerShortcutImpl;
.super Lcom/miui/cleanmaster/ICleanerShortcut$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/cleanmaster/CleanerHandleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CleanerShortcutImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/cleanmaster/ICleanerShortcut$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createCleanerShortcut()V
    .locals 2

    invoke-static {}, Lcom/miui/cleanmaster/CleanerHandleService;->a()V

    const-string v0, "CleanerHandleService"

    const-string v1, "createCleanerShortcut: handleCreateCleanerShortcut: Create cleaner shortcut"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isCleanerShortcutCreated()Z
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/shortcut/d$b;->d:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {v0, v1}, Lcom/miui/securityscan/shortcut/d;->q(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result v0

    return v0
.end method
