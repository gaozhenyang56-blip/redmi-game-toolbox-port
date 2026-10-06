.class Lcom/miui/firstaidkit/FirstAidKitActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/common/customview/ActionBarContainer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/firstaidkit/FirstAidKitActivity;->F0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/firstaidkit/FirstAidKitActivity;


# direct methods
.method constructor <init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity$a;->a:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity$a;->a:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-virtual {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->onBackPressed()V

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity$a;->a:Lcom/miui/firstaidkit/FirstAidKitActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/firstaidkit/FirstAidKitActivity$a;->a:Lcom/miui/firstaidkit/FirstAidKitActivity;

    const-class v3, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
