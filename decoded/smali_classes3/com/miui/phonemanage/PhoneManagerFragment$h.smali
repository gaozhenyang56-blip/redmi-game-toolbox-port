.class Lcom/miui/phonemanage/PhoneManagerFragment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/phonemanage/PhoneManagerFragment;->W0(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$h;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/phonemanage/PhoneManagerFragment$h;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/phonemanage/PhoneManagerFragment$h;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 3

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$h;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$h;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->z0(Lcom/miui/phonemanage/PhoneManagerFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$h;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071e20

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$h;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p1, p2}, Lcom/miui/phonemanage/PhoneManagerFragment;->B0(Lcom/miui/phonemanage/PhoneManagerFragment;Landroid/view/View;)Landroid/view/View;

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$h;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->z0(Lcom/miui/phonemanage/PhoneManagerFragment;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/miui/phonemanage/a;

    invoke-direct {p2, p0}, Lcom/miui/phonemanage/a;-><init>(Lcom/miui/phonemanage/PhoneManagerFragment$h;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
