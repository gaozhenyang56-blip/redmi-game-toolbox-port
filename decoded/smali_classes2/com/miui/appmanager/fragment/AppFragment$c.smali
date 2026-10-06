.class Lcom/miui/appmanager/fragment/AppFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/appmanager/fragment/AppFragment;->l0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/appmanager/fragment/AppFragment;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/fragment/AppFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/fragment/AppFragment$c;->a:Lcom/miui/appmanager/fragment/AppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/appmanager/fragment/AppFragment$c;->a:Lcom/miui/appmanager/fragment/AppFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/miui/appmanager/AppManagerMainActivity;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AppFragment$c;->a:Lcom/miui/appmanager/fragment/AppFragment;

    const v1, 0x7f1201f9

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->q0(Ljava/lang/String;)V

    return-void
.end method
