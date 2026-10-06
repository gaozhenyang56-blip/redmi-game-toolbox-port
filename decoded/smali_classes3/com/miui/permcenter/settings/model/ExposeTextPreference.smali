.class public final Lcom/miui/permcenter/settings/model/ExposeTextPreference;
.super Lmiuix/preference/TextPreference;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field private a:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Luc/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final d()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/permcenter/settings/model/ExposeTextPreference;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/ExposeTextPreference;->a:Landroid/view/View;

    invoke-static {v0}, Lvc/b;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/settings/model/ExposeTextPreference;->c:Z

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/ExposeTextPreference;->b:Luc/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Luc/a;->a(Lcom/miui/permcenter/settings/model/ExposeTextPreference;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 1
    .param p1    # Landroidx/preference/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lmiuix/preference/TextPreference;->onBindViewHolder(Landroidx/preference/h;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/ExposeTextPreference;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/permcenter/settings/model/ExposeTextPreference;->a:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/settings/model/ExposeTextPreference;->d()V

    return-void
.end method

.method public onScrollChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/settings/model/ExposeTextPreference;->d()V

    return-void
.end method
