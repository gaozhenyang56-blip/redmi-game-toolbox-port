.class public final Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lmiuix/preference/b;


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private final j:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lic/a;

    invoke-direct {v0, p0}, Lic/a;-><init>(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;)V

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->j:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1}, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->o(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lic/a;

    invoke-direct {p2, p0}, Lic/a;-><init>(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;)V

    iput-object p2, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->j:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1}, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->o(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lic/a;

    invoke-direct {p2, p0}, Lic/a;-><init>(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;)V

    iput-object p2, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->j:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1}, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->o(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Lic/a;

    invoke-direct {p2, p0}, Lic/a;-><init>(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;)V

    iput-object p2, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->j:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1}, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->o(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic d(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->r(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->s(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic f(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic g(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic h(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic i(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic j(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic k(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic l(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic m(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->a:Z

    return-void
.end method

.method private final n()V
    .locals 9

    iget-boolean v0, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->b:Landroid/content/Context;

    const-string v1, "context"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    instance-of v0, v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->b:Landroid/content/Context;

    if-nez v0, :cond_2

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference$a;

    invoke-direct {v6, p0, v2}, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference$a;-><init>(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;Ltj/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    :cond_3
    return-void
.end method

.method private final o(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0e045c

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->b:Landroid/content/Context;

    return-void
.end method

.method private static final r(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static final s(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;Landroid/view/View;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0165

    if-eq p1, v0, :cond_2

    const v0, 0x7f0b016b

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b016d

    if-eq p1, v0, :cond_0

    const/16 p1, 0x7e

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    :goto_0
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "extra_menu_with"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 5
    .param p1    # Landroidx/preference/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lic/b;

    invoke-direct {v1}, Lic/b;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0b016b

    invoke-virtual {p1, v0}, Landroidx/preference/h;->a(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lbl/l;->a()I

    move-result v1

    const v2, 0x7f080eda

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type android.view.View"

    invoke-static {v1, v4}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    const v4, 0x7f080edf

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    invoke-static {v0, v0}, Lx4/h0;->f(Landroid/view/View;Landroid/view/View;)V

    const v0, 0x7f0b016d

    invoke-virtual {p1, v0}, Landroidx/preference/h;->a(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lbl/l;->a()I

    move-result v1

    if-le v1, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    invoke-static {v0, v0}, Lx4/h0;->f(Landroid/view/View;Landroid/view/View;)V

    const v0, 0x7f0b0165

    invoke-virtual {p1, v0}, Landroidx/preference/h;->a(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lbl/l;->a()I

    move-result v1

    if-le v1, v3, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    invoke-static {v0, v0}, Lx4/h0;->f(Landroid/view/View;Landroid/view/View;)V

    const v0, 0x7f0b095b

    invoke-virtual {p1, v0}, Landroidx/preference/h;->a(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->c:Landroid/widget/TextView;

    const v0, 0x7f0b095e

    invoke-virtual {p1, v0}, Landroidx/preference/h;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->d:Landroid/widget/TextView;

    const v0, 0x7f0b0959

    invoke-virtual {p1, v0}, Landroidx/preference/h;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->e:Landroid/widget/TextView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b095c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "holder.itemView.findView\u2026ent_location_count_times)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->f:Landroid/widget/TextView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b095f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "holder.itemView.findView\u2026d.recent_mic_count_times)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->g:Landroid/widget/TextView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b095a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "holder.itemView.findView\u2026ecent_camera_count_times)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->h:Landroid/widget/TextView;

    invoke-static {}, Ln4/b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b095d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "holder.itemView.findView\u2026R.id.recent_location_img)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->i:Landroid/widget/ImageView;

    if-nez p1, :cond_3

    const-string p1, "mLocationImg"

    invoke-static {p1}, Lbk/m;->r(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_3
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    :cond_4
    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->n()V

    return-void
.end method

.method public final q()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->a:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
