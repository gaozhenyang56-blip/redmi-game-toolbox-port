.class public Lcom/miui/powercenter/view/HistoryCheckGroup;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/view/HistoryCheckGroup$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/miui/powercenter/view/HistoryCheckGroup$a;

.field private c:Lcom/miui/powercenter/view/ShadowButton;

.field private d:Lcom/miui/powercenter/view/ShadowButton;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/powercenter/view/HistoryCheckGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->a:I

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->e:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0e03da

    invoke-virtual {p1, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0b01df

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/view/ShadowButton;

    iput-object p1, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->c:Lcom/miui/powercenter/view/ShadowButton;

    const p1, 0x7f0b01e4

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/view/ShadowButton;

    iput-object p1, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->d:Lcom/miui/powercenter/view/ShadowButton;

    iget-object p1, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->c:Lcom/miui/powercenter/view/ShadowButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->d:Lcom/miui/powercenter/view/ShadowButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->c:Lcom/miui/powercenter/view/ShadowButton;

    const/4 p3, 0x2

    new-array v0, p3, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/view/ShadowButton;->setImageResources([I)V

    iget-object p1, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->d:Lcom/miui/powercenter/view/ShadowButton;

    new-array p3, p3, [I

    fill-array-data p3, :array_1

    invoke-virtual {p1, p3}, Lcom/miui/powercenter/view/ShadowButton;->setImageResources([I)V

    invoke-direct {p0, p2}, Lcom/miui/powercenter/view/HistoryCheckGroup;->a(Z)V

    return-void

    :array_0
    .array-data 4
        0x7f080de2
        0x7f080de1
    .end array-data

    :array_1
    .array-data 4
        0x7f080de4
        0x7f080de3
    .end array-data
.end method

.method private a(Z)V
    .locals 3

    iget v0, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->c:Lcom/miui/powercenter/view/ShadowButton;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/view/ShadowButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->d:Lcom/miui/powercenter/view/ShadowButton;

    invoke-virtual {v0, v2}, Lcom/miui/powercenter/view/ShadowButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->c:Lcom/miui/powercenter/view/ShadowButton;

    invoke-virtual {v0, v2}, Lcom/miui/powercenter/view/ShadowButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->d:Lcom/miui/powercenter/view/ShadowButton;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/view/ShadowButton;->setChecked(Z)V

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->b:Lcom/miui/powercenter/view/HistoryCheckGroup$a;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->a:I

    invoke-interface {p1, v0}, Lcom/miui/powercenter/view/HistoryCheckGroup$a;->a(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentCheckItem()I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->a:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->c:Lcom/miui/powercenter/view/ShadowButton;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->a:I

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->a:I

    :goto_0
    invoke-direct {p0, v1}, Lcom/miui/powercenter/view/HistoryCheckGroup;->a(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->d:Lcom/miui/powercenter/view/ShadowButton;

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->a:I

    if-nez p1, :cond_2

    iput v1, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->a:I

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->e:Z

    iget-object v0, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->c:Lcom/miui/powercenter/view/ShadowButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->d:Lcom/miui/powercenter/view/ShadowButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setOnCheckChangeListener(Lcom/miui/powercenter/view/HistoryCheckGroup$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/view/HistoryCheckGroup;->b:Lcom/miui/powercenter/view/HistoryCheckGroup$a;

    return-void
.end method
