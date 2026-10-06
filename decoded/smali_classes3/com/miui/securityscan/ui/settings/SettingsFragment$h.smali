.class Lcom/miui/securityscan/ui/settings/SettingsFragment$h;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/ui/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment$h;->b:Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment$h;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment$h;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment$h;->b:Z

    invoke-static {v0, v1, v2}, Leg/r;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
