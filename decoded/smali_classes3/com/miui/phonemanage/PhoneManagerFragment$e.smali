.class Lcom/miui/phonemanage/PhoneManagerFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/common/customview/ActionBarContainer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/phonemanage/PhoneManagerFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/phonemanage/PhoneManagerFragment;


# direct methods
.method constructor <init>(Lcom/miui/phonemanage/PhoneManagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$e;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$e;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/MainActivity;->B0(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$e;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$e;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v1}, Lcom/miui/phonemanage/PhoneManagerFragment;->s0(Lcom/miui/phonemanage/PhoneManagerFragment;)V

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/MainActivity;->B0(I)V

    :cond_0
    return-void
.end method
