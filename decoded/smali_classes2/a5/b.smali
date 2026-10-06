.class public final La5/b;
.super Lwb/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La5/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwb/a<",
        "Lb5/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:La5/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final b:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz4/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Landroid/util/SparseIntArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La5/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La5/b$a;-><init>(Lbk/g;)V

    sput-object v0, La5/b;->f:La5/b$a;

    return-void
.end method

.method public constructor <init>(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lwb/a;-><init>()V

    iput-object p1, p0, La5/b;->b:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    iput-object p2, p0, La5/b;->c:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La5/b;->d:Ljava/util/ArrayList;

    new-instance p1, Landroid/util/SparseIntArray;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p1, p0, La5/b;->e:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static synthetic l(La5/b;IILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La5/b;->n(La5/b;IILandroid/view/View;)V

    return-void
.end method

.method private static final n(La5/b;IILandroid/view/View;)V
    .locals 2

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Landroid/content/Intent;

    iget-object v0, p0, La5/b;->b:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    const-class v1, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyActivity;

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, La5/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    const-string v0, "device_permission_info"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p1, p0, La5/b;->c:Ljava/lang/String;

    const-string v0, "device_permission"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "device_item_position"

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, La5/b;->b:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    invoke-virtual {p0, p3}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final p(Landroid/widget/ImageView;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7

    const v0, 0x7f12110f

    const v1, 0x7f12110e

    const/4 v2, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    const p2, 0x7f080925

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f121105

    goto :goto_8

    :cond_1
    :goto_0
    const/4 v3, 0x2

    const v4, 0x7f08092a

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_3

    :goto_1
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    move v0, v1

    goto :goto_8

    :cond_3
    :goto_2
    const/4 v3, 0x3

    const v5, 0x7f08092c

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_6

    const/4 p2, 0x6

    if-nez p3, :cond_5

    goto :goto_7

    :cond_5
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, p2, :cond_b

    goto :goto_1

    :cond_6
    :goto_3
    const/4 p3, 0x1

    if-nez p2, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p3, :cond_8

    goto :goto_6

    :cond_8
    :goto_4
    const/4 v1, 0x4

    if-nez p2, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v1, :cond_a

    goto :goto_6

    :cond_a
    :goto_5
    move p3, v2

    :goto_6
    if-eqz p3, :cond_c

    :cond_b
    :goto_7
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    :cond_c
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move v0, v2

    :goto_8
    if-eqz v0, :cond_d

    iget-object p2, p0, La5/b;->b:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    iget-object v0, p0, La5/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, La5/b;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewGroup(I)I
    .locals 4

    iget-object v0, p0, La5/b;->e:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const/high16 v2, -0x80000000

    const/4 v3, 0x1

    if-gt v0, v3, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_0

    :goto_0
    return v1
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, La5/b;->e:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public m(Lb5/b;I)V
    .locals 6
    .param p1    # Lb5/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lwb/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const-string v1, "viewHolder.itemView"

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    sget-object v0, Lxc/v;->a:Lxc/v$a;

    iget-object v3, p0, La5/b;->b:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v4, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lxc/v$a;->a(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lxc/v;->a:Lxc/v$a;

    iget-object v3, p0, La5/b;->b:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v4, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lxc/v$a;->e(Lmiuix/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    :goto_0
    instance-of v0, p1, Lb5/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, La5/b;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    sub-int v0, p2, v0

    iget-object v1, p0, La5/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz4/a;

    invoke-virtual {v1}, Lz4/a;->d()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, La5/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, La5/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz4/a;

    invoke-virtual {v2}, Lz4/a;->e()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, La5/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    check-cast p1, Lb5/a;

    iget-object v3, p0, La5/b;->c:Ljava/lang/String;

    iget-object v4, p0, La5/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "mData[dataPosition]"

    invoke-static {v4, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lz4/a;

    invoke-virtual {p1, v3, v4}, Lb5/a;->b(Ljava/lang/String;Lz4/a;)V

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v4, La5/a;

    invoke-direct {v4, p0, v0, p2}, La5/a;-><init>(La5/b;II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lb5/a;->d()Landroid/widget/ImageView;

    move-result-object p1

    invoke-direct {p0, p1, v1, v2}, La5/b;->p(Landroid/widget/ImageView;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lb5/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, La5/b;->b:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    invoke-virtual {v0}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->j0()Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast p1, Lb5/c;

    invoke-static {}, Lx4/t;->E()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v2

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr v1, p2

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    iget-object p2, p0, La5/b;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lb5/c;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, La5/b;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lb5/b;->a(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public o(Landroid/view/ViewGroup;I)Lb5/b;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    new-instance p2, Lb5/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e0439

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(parent.context)\n   \u2026item_view, parent, false)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lb5/a;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lb5/c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e015b

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(parent.context)\n   \u2026mpty_tips, parent, false)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lb5/c;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p2, Lb5/d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e02aa

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(parent.context)\n   \u2026or_header, parent, false)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lb5/d;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    check-cast p1, Lb5/b;

    invoke-virtual {p0, p1, p2}, La5/b;->m(Lb5/b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    invoke-virtual {p0, p1, p2}, La5/b;->o(Landroid/view/ViewGroup;I)Lb5/b;

    move-result-object p1

    return-object p1
.end method

.method public final q(Ljava/util/ArrayList;)V
    .locals 3
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lz4/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, La5/b;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, La5/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, La5/b;->e:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, La5/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, La5/b;->e:Landroid/util/SparseIntArray;

    const/4 v0, 0x3

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method
