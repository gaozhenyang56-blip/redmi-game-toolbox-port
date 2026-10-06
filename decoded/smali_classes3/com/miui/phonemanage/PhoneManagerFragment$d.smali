.class Lcom/miui/phonemanage/PhoneManagerFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    iput-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$d;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$d;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->l0(Lcom/miui/phonemanage/PhoneManagerFragment;)Lcom/miui/common/customview/FirstTouchRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/phonemanage/PhoneManagerFragment;->N0(Lcom/miui/phonemanage/PhoneManagerFragment;I)I

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$d;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->l0(Lcom/miui/phonemanage/PhoneManagerFragment;)Lcom/miui/common/customview/FirstTouchRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
