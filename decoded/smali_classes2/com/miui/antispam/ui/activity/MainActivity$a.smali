.class Lcom/miui/antispam/ui/activity/MainActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/activity/MainActivity;->h0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antispam/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/MainActivity$a;->a:Lcom/miui/antispam/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MainActivity$a;->a:Lcom/miui/antispam/ui/activity/MainActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MainActivity$a;->a:Lcom/miui/antispam/ui/activity/MainActivity;

    const-class v2, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    const-string p1, "settings"

    invoke-static {p1}, Lc2/a;->f(Ljava/lang/String;)V

    return-void
.end method
