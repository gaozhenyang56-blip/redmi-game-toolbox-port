.class public Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;
.super Lwb/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwb/a<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/miui/permcenter/permissions/b$b;

.field private final i:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)V
    .locals 2

    invoke-direct {p0}, Lwb/a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->c:Z

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->g:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->i:Landroid/util/SparseIntArray;

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    return-void
.end method

.method private A(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->g:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->P()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;

    invoke-static {p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;->a(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->a(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->b(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;->b(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->b(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;->b(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;->b(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;->c(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->j()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/miui/permcenter/permissions/i;

    invoke-direct {v1, p1}, Lcom/miui/permcenter/permissions/i;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;->c(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->k()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private B(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->t0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/miui/permcenter/o;->k:Z

    const-string v1, ""

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;

    const v3, 0x7f120de7

    invoke-direct {p0, v3}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->y(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lxc/k;->b()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->m(Ljava/lang/Boolean;)V

    new-instance v3, Lcom/miui/permcenter/permissions/h;

    invoke-direct {v3, p0, v0}, Lcom/miui/permcenter/permissions/h;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)V

    invoke-virtual {v0, v3}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->n(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lbl/l;->a()I

    move-result v0

    if-lt v0, v2, :cond_1

    const v0, 0x7f120cb1

    goto :goto_0

    :cond_1
    const v0, 0x7f120217

    :goto_0
    new-instance v2, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    const-string v5, "location_settings_title"

    invoke-static {v4, v5, v0}, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider;->c(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcc/o;

    invoke-direct {v0, p0}, Lcc/o;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;)V

    invoke-virtual {v2, v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->o(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private C()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->h0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)I

    move-result v1

    const/16 v2, 0x200

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->B(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->r0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)J

    move-result-wide v1

    const-wide v3, 0x400000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/miui/permcenter/o;->l:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;

    const/4 v2, 0x2

    const v3, 0x7f1211e2

    invoke-direct {p0, v3}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->y(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f12136f

    invoke-direct {p0, v4}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->y(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lxc/k;->c()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->m(Ljava/lang/Boolean;)V

    new-instance v2, Lcom/miui/permcenter/permissions/f;

    invoke-direct {v2, p0, v1}, Lcom/miui/permcenter/permissions/f;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)V

    invoke-virtual {v1, v2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->n(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->r0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)J

    move-result-wide v1

    const-wide v3, 0x4000000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/miui/permcenter/o;->g:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->D(Ljava/util/ArrayList;Z)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private D(Ljava/util/ArrayList;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v1, Lcom/miui/permcenter/o;->h:Z

    if-eqz v1, :cond_0

    new-instance v1, Lj3/b;

    iget-object v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12138d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj3/b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lj3/b;

    iget-object v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12137d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj3/b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lj3/b;

    iget-object v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121361

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj3/b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-direct {p0, v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->x(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    new-instance v3, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;

    const/16 v4, 0x9

    const v5, 0x7f120b7c

    invoke-direct {p0, v5}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->y(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->g:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->g:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;

    invoke-static {v2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->g(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)Lj3/c;

    move-result-object v3

    invoke-virtual {v3}, Lj3/c;->j()I

    move-result v3

    if-ne v3, v1, :cond_2

    return-void

    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj3/b;

    invoke-virtual {v3}, Lj3/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->e(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj3/b;

    invoke-virtual {v4}, Lj3/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->V(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->c(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;Ljava/lang/String;)Ljava/lang/String;

    if-eqz p2, :cond_3

    new-instance p2, Lj3/c;

    iget-object v3, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-direct {p2, v3}, Lj3/c;-><init>(Landroid/content/Context;)V

    invoke-static {v2, p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->h(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;Lj3/c;)Lj3/c;

    invoke-static {v2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->g(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)Lj3/c;

    move-result-object p2

    invoke-virtual {p2, v0}, Lj3/c;->m(Ljava/util/List;)V

    invoke-static {v2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->g(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)Lj3/c;

    move-result-object p2

    invoke-virtual {p2, v1}, Lj3/c;->o(I)V

    invoke-static {v2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->g(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)Lj3/c;

    move-result-object p2

    new-instance v1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e$a;

    invoke-direct {v1, p0, v2, v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e$a;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;Ljava/util/List;)V

    invoke-virtual {p2, v1}, Lj3/c;->n(Lj3/c$d;)V

    new-instance p2, Lcom/miui/permcenter/permissions/g;

    invoke-direct {p2, v2}, Lcom/miui/permcenter/permissions/g;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)V

    invoke-virtual {v2, p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->o(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->g(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)Lj3/c;

    move-result-object p1

    invoke-virtual {p1, v1}, Lj3/c;->o(I)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private E(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$n;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->g:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->P()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;

    iget-object v0, p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$d;->a:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->a(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$d;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->f(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private F(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->n0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Lcom/miui/appmanager/AppManageUtils;->p0(JLjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->j0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_2
    iget-boolean p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->b:Z

    return p1
.end method

.method private static synthetic G(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;->c(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p1

    invoke-static {p0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;->c(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    return-void
.end method

.method private synthetic H(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->m(Ljava/lang/Boolean;)V

    invoke-direct {p0, p3}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->R(Z)V

    return-void
.end method

.method private synthetic I(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-virtual {v0, p1}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic J(ZLandroid/widget/CompoundButton;)V
    .locals 1

    const-string v0, "operator_get_phone_number"

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->S(Ljava/lang/String;ZLandroid/widget/CompoundButton;)V

    return-void
.end method

.method private synthetic K(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;Landroid/widget/CompoundButton;Z)V
    .locals 1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->m(Ljava/lang/Boolean;)V

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {p1}, Lcom/miui/permcenter/q;->w(Landroid/content/Context;)V

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcc/n;

    invoke-direct {v0, p0, p3, p2}, Lcc/n;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;ZLandroid/widget/CompoundButton;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic L(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;Landroid/view/View;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->g(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)Lj3/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj3/c;->l(Landroid/view/View;)V

    invoke-static {p0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->g(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)Lj3/c;

    move-result-object p0

    invoke-virtual {p0}, Lj3/c;->p()V

    return-void
.end method

.method private synthetic M(IILcom/miui/permcenter/AppPermissionInfo;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->h:Lcom/miui/permcenter/permissions/b$b;

    invoke-interface {v0, p1, p2, p4, p3}, Lcom/miui/permcenter/permissions/b$b;->X(IILandroid/view/View;Lcom/miui/permcenter/AppPermissionInfo;)V

    return-void
.end method

.method private O(Landroid/widget/ImageView;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const p2, 0x7f080e2e

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const p2, 0x7f12110d

    goto :goto_0

    :cond_1
    const p2, 0x7f080e2d

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const p2, 0x7f121107

    goto :goto_0

    :cond_2
    const p2, 0x7f08092a

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const p2, 0x7f12110e

    goto :goto_0

    :cond_3
    const p2, 0x7f080e2f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const p2, 0x7f12110f

    :goto_0
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private P()I
    .locals 1

    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->d:Z

    :goto_0
    return v0
.end method

.method private R(Z)V
    .locals 3

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/BlurLocationDialog;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/ui/dialog/BlurLocationDialog;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f12068a

    invoke-direct {p0, v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->y(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    const v2, 0x7f120428

    goto :goto_0

    :cond_0
    const v2, 0x7f120427

    :goto_0
    invoke-direct {p0, v2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->y(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/BlurLocationDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lxc/k;->f(I)V

    return-void
.end method

.method private S(Ljava/lang/String;ZLandroid/widget/CompoundButton;)V
    .locals 1

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p3, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    xor-int/lit8 v0, p2, 0x1

    invoke-static {p3, v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->u0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;Z)Z

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->U(Ljava/lang/String;Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->i0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->T(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method private T(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    sget-boolean v0, Lcom/miui/permcenter/o;->m:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcc/i;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v3}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->h0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "key_invisible_mode_state"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    iput-boolean v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->d:Z

    move v1, v2

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->d:Z

    :goto_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_3

    sget-object v0, Lcc/i;->c:Ljava/util/Map;

    iget-object v3, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v3}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->h0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcc/i;->a:Ljava/util/Map;

    iget-object v3, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v3}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->r0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->s0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->i:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->i:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v3, 0x1

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    iput-boolean v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->c:Z

    :cond_3
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->h0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)I

    move-result v0

    const/16 v3, 0x200

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->r0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)J

    move-result-wide v3

    const-wide v5, 0x400000000L

    cmp-long v0, v3, v5

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->r0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)J

    move-result-wide v3

    const-wide v5, 0x4000000000L

    cmp-long v0, v3, v5

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->s0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->C()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;

    iget-object v4, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->i:Landroid/util/SparseIntArray;

    add-int/lit8 v5, v1, 0x1

    invoke-static {v3}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->i(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)I

    move-result v3

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    move v1, v5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->t0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    if-gt v0, v2, :cond_6

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->i:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    move v1, v2

    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_8

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->s0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->i:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    move v1, v0

    :cond_7
    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->i:Landroid/util/SparseIntArray;

    const/4 v0, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->s0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_9
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_a
    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method private U(Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "operator_get_phone_number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lxc/k;->e(Z)V

    :goto_0
    return-void
.end method

.method private V(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12138d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f12138c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f12137d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f12136d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    move v1, v2

    :goto_0
    invoke-static {p1, v1}, Lcom/miui/permcenter/o;->r(Landroid/content/Context;Z)V

    invoke-static {v2}, Lxc/k;->d(Z)V

    if-nez v2, :cond_2

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    const/4 v0, 0x6

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->k0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;II)V

    :cond_2
    return-object p2
.end method

.method public static synthetic l(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->G(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->I(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;IILcom/miui/permcenter/AppPermissionInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->M(IILcom/miui/permcenter/AppPermissionInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;ZLandroid/widget/CompoundButton;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->J(ZLandroid/widget/CompoundButton;)V

    return-void
.end method

.method public static synthetic p(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->L(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->H(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic r(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->K(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static synthetic s(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->D(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic t(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;Ljava/lang/String;ZLandroid/widget/CompoundButton;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->S(Ljava/lang/String;ZLandroid/widget/CompoundButton;)V

    return-void
.end method

.method static synthetic u(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;)Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    return-object p0
.end method

.method static synthetic v(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->V(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic w(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->T(Ljava/util/ArrayList;)V

    return-void
.end method

.method private x(Landroid/content/Context;)I
    .locals 1

    sget-boolean v0, Lcom/miui/permcenter/o;->h:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/permcenter/o;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lxc/k;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    if-eqz v0, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method private y(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private z()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcc/i;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->h0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcc/i;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->h0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->y(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcc/i;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->r0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcc/i;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->r0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public N(Lcc/g;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {v2}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcc/g;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/miui/permcenter/AppPermissionInfo;->getUid()I

    move-result v3

    invoke-static {v3}, Lx4/z1;->m(I)I

    move-result v3

    invoke-virtual {p1}, Lcc/g;->d()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {p1}, Lcc/g;->c()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p1}, Lcc/g;->c()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAppPermissionChange:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",which data index:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CardGroupAdapter"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public Q(Lcom/miui/permcenter/permissions/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->h:Lcom/miui/permcenter/permissions/b$b;

    return-void
.end method

.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewGroup(I)I
    .locals 4

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->i:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/16 v3, 0x9

    if-eq p1, v3, :cond_3

    const/4 v3, 0x7

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->i:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lwb/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    sget-object v0, Lxc/v;->a:Lxc/v$a;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lxc/v$a;->d(Lmiuix/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    instance-of v0, p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$i;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$i;

    iget-object p1, p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$i;->a:Lmiuix/miuixbasewidget/widget/MessageView;

    sget-object p2, Lcc/i;->b:Ljava/util/Map;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->h0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->y(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/miuixbasewidget/widget/MessageView;->setMessage(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    instance-of v0, p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$f;

    if-eqz v0, :cond_3

    return-void

    :cond_3
    instance-of v0, p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$o;

    const/16 v1, 0x8

    if-eqz v0, :cond_5

    check-cast p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$o;

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->z()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$o;->a(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$o;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_5
    instance-of v0, p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$j;

    if-eqz v0, :cond_6

    return-void

    :cond_6
    instance-of v0, p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$n;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$n;

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->E(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$n;I)V

    return-void

    :cond_7
    instance-of v0, p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->A(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;I)V

    return-void

    :cond_8
    instance-of v0, p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$h;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$h;

    invoke-static {p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$h;->a(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$h;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f1210e7

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_9
    instance-of v0, p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$g;

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    check-cast p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$g;

    invoke-static {p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$g;->a(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$g;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120726

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lx4/t;->E()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const/16 v1, 0xf

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_a

    const/16 v1, 0xb

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->g0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object v0

    sub-int/2addr p2, v2

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->g0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->g0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->g0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_a
    return-void

    :cond_b
    instance-of v0, p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$l;

    const/4 v3, 0x0

    if-eqz v0, :cond_d

    check-cast p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$l;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->g:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->P()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;

    invoke-static {p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$l;->a(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->a(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->b(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$l;->b(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->b(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$l;->b(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_c
    invoke-static {p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$l;->b(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-static {p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$l;->c(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->d(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$l;->c(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$l;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->l()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    sub-int v0, p2, v0

    iget-object v4, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/AppPermissionInfo;

    check-cast p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$d;

    invoke-virtual {v0}, Lcom/miui/permcenter/AppPermissionInfo;->getUserId()I

    move-result v4

    const/16 v5, 0x3e7

    if-ne v4, v5, :cond_e

    const-string v4, "pkg_icon_xspace://"

    goto :goto_2

    :cond_e
    const-string v4, "pkg_icon://"

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$d;->c:Landroid/widget/ImageView;

    sget-object v6, Lx4/o0;->f:Lrh/c;

    invoke-static {v4, v5, v6}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    iget-object v4, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v4}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->n0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/permcenter/l;->b(Ljava/util/ArrayList;Ljava/util/HashMap;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->h:Lcom/miui/permcenter/permissions/b$b;

    if-eqz v5, :cond_f

    invoke-virtual {v0}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->F(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v5, Lcc/m;

    invoke-direct {v5, p0, p2, v4, v0}, Lcc/m;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;IILcom/miui/permcenter/AppPermissionInfo;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_f
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setClickable(Z)V

    :goto_3
    iget-object p2, p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$d;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-virtual {v0}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/miui/permcenter/AppPermissionInfo;->getUsageEvent()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_10

    iget-object p2, p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$d;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$d;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/permcenter/AppPermissionInfo;->getUsageEvent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_10
    iget-object p2, p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$d;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object p1, p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$d;->d:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v4}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->O(Landroid/widget/ImageView;I)V

    :cond_11
    :goto_5
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0e0439

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance p2, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$d;

    iget-object v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$d;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_1
    new-instance p2, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$l;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e045f

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$l;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_2
    new-instance p2, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$f;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e0458

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070a70

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-direct {p2, p1, v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$f;-><init>(Landroid/view/View;I)V

    return-object p2

    :pswitch_3
    new-instance p2, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$n;

    iget-object v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$n;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_4
    new-instance p2, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$g;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e015b

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$g;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_5
    new-instance p2, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$j;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e043a

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$j;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_6
    new-instance p2, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$h;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e02aa

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$h;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_7
    new-instance p2, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e044c

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_8
    new-instance p2, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$o;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e0461

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$o;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_9
    new-instance p2, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$i;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->e:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e0248

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$i;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
