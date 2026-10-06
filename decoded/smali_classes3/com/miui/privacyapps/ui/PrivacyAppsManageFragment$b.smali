.class Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;


# direct methods
.method constructor <init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$b;->a:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$b;->a:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;

    invoke-static {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->c0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$b;->a:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->g0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$b;->a:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;

    invoke-static {p1}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->f0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->h0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;Ljava/lang/String;)V

    :cond_0
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
