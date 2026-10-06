.class public final Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$e;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$e;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {v0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->f0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Ljc/e;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "mAdapter"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljc/e;->m(I)Ljc/f;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    instance-of v0, p1, Ljc/g;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$e;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    const-class v2, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    check-cast p1, Ljc/g;

    invoke-virtual {p1}, Ljc/g;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Ljc/g;->f()I

    move-result v1

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1}, Ljc/g;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Ljc/g;->d(I)Z

    move-result p1

    const-string v1, "IS_TERMINAL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$e;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-virtual {p1, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method
