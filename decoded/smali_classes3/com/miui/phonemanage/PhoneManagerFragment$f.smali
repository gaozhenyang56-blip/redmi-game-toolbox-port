.class Lcom/miui/phonemanage/PhoneManagerFragment$f;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/phonemanage/PhoneManagerFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/miui/phonemanage/PhoneManagerFragment;


# direct methods
.method constructor <init>(Lcom/miui/phonemanage/PhoneManagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$f;->e:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$f;->e:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->t0(Lcom/miui/phonemanage/PhoneManagerFragment;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
