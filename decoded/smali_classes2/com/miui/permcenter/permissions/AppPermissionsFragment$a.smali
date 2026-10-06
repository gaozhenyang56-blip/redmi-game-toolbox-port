.class Lcom/miui/permcenter/permissions/AppPermissionsFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/permissions/AppPermissionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/permissions/AppPermissionsFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/AppPermissionsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment$a;->a:Lcom/miui/permcenter/permissions/AppPermissionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment$a;->a:Lcom/miui/permcenter/permissions/AppPermissionsFragment;

    invoke-static {v0, p1}, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->e0(Lcom/miui/permcenter/permissions/AppPermissionsFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment$a;->a:Lcom/miui/permcenter/permissions/AppPermissionsFragment;

    invoke-static {p1}, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->f0(Lcom/miui/permcenter/permissions/AppPermissionsFragment;)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment$a;->a:Lcom/miui/permcenter/permissions/AppPermissionsFragment;

    invoke-static {p1}, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->c0(Lcom/miui/permcenter/permissions/AppPermissionsFragment;)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
