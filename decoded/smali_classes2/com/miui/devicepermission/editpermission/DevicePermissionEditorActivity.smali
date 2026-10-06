.class public final Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lwb/b;


# instance fields
.field private a:Ljava/util/ArrayList;
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

.field private b:Lmiuix/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:La5/b;

.field private d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Llk/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->a:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->d:Ljava/lang/String;

    invoke-static {}, Llk/j0;->b()Llk/i0;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->e:Llk/i0;

    return-void
.end method

.method public static synthetic d0(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->m0(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final synthetic e0(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;)La5/b;
    .locals 0

    iget-object p0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->c:La5/b;

    return-object p0
.end method

.method public static final synthetic f0(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic g0(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic h0(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;Ltj/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->k0(Ltj/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i0(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private final k0(Ltj/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltj/d<",
            "-",
            "Ljava/util/ArrayList<",
            "Lz4/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Llk/w0;->b()Llk/d0;

    move-result-object v0

    new-instance v1, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a;-><init>(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;Ltj/d;)V

    invoke-static {v0, v1, p1}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final l0(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    return-void

    :cond_2
    const v1, 0x7f121564

    const v2, 0x7f120566

    goto :goto_0

    :cond_3
    const v1, 0x7f12152f

    const v2, 0x7f120565

    goto :goto_0

    :cond_4
    const v1, 0x7f1200e6

    const v2, 0x7f12055c

    :goto_0
    new-instance v3, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120f48

    new-instance v2, La5/c;

    invoke-direct {v2, p0, p1}, La5/c;-><init>(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;I)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120499

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    :cond_5
    :goto_1
    return-void
.end method

.method private static final m0(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;ILandroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->n0(I)V

    return-void
.end method

.method private final n0(I)V
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz4/a;

    invoke-virtual {v2}, Lz4/a;->d()Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq p1, v5, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->d:Ljava/lang/String;

    invoke-virtual {v2}, Lz4/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lz4/a;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object v6, p0

    move v11, p1

    invoke-static/range {v6 .. v11}, Lz4/b;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->d:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->c:La5/b;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "mAdapter"

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    iget-object v3, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->e:Llk/i0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$c;

    invoke-direct {v6, v0, p0, p1, v2}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$c;-><init>(Ljava/util/ArrayList;Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;ILtj/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method


# virtual methods
.method public final j0()Lmiuix/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->b:Lmiuix/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    const p1, 0x7f0e0423

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "device_permission"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->d:Ljava/lang/String;

    new-instance v0, La5/b;

    iget-object v2, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->d:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, La5/b;-><init>(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lwb/a;->k(Lwb/b;)V

    iput-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->c:La5/b;

    const v0, 0x7f0b00e9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->c:La5/b;

    if-nez v2, :cond_1

    const-string v2, "mAdapter"

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-static {}, Lbl/l;->a()I

    move-result v2

    if-le v2, p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060b72

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Lmiuix/recyclerview/card/f;

    invoke-direct {p1, p0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    :cond_2
    iput-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->b:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->d:Ljava/lang/String;

    invoke-static {p1}, Ldc/d;->b(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->e:Llk/i0;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b;

    invoke-direct {v5, p0, v1}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b;-><init>(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;Ltj/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->e:Llk/i0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Llk/j0;->d(Llk/i0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .locals 4

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onExtraPaddingChanged(I)V

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->b:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lmiuix/recyclerview/card/f;

    if-eqz v2, :cond_3

    int-to-float p1, p1

    sget v2, Ltm/e;->d:I

    mul-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    add-float/2addr p1, v2

    float-to-int p1, p1

    check-cast v0, Lmiuix/recyclerview/card/f;

    invoke-virtual {v0, p1}, Lmiuix/recyclerview/card/f;->v(I)V

    invoke-virtual {v0, p1}, Lmiuix/recyclerview/card/f;->u(I)V

    iget-object p1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->b:Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->b:Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b00a8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const v1, 0x7f0b0916

    if-eq v0, v1, :cond_1

    const v1, 0x7f0b0972

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_1

    :cond_0
    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->l0(I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->l0(I)V

    :goto_1
    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    if-eqz p1, :cond_1

    const v0, 0x7f0b00a8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public setHorizontalPadding(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "needPaddingView"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setViewHorizontalPadding(Landroid/view/View;)V

    :cond_0
    return-void
.end method
