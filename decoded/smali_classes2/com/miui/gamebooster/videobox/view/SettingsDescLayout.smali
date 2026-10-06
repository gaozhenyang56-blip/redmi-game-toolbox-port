.class public Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/videobox/view/SettingsDescLayout$d;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Lg8/a;

.field private g:Lcom/miui/gamebooster/videobox/view/SettingsDescLayout$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;)Lcom/miui/gamebooster/videobox/view/SettingsDescLayout$d;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;->g:Lcom/miui/gamebooster/videobox/view/SettingsDescLayout$d;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;)Lg8/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;->f:Lg8/a;

    return-object p0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b0cf3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;->a:Landroid/widget/TextView;

    const v0, 0x7f0b05e0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;->b:Landroid/widget/ImageView;

    const v0, 0x7f0b06ea

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;->c:Landroid/view/View;

    const v0, 0x7f0b0662

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;->d:Landroid/view/View;

    const v0, 0x7f0b06ef

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;->e:Landroid/view/View;

    const v0, 0x7f0b05f9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout$a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout$a;-><init>(Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_1
    new-instance v0, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout$b;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout$b;-><init>(Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setFunctionType(Lg8/a;)V
    .locals 3

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;->f:Lg8/a;

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;->a:Landroid/widget/TextView;

    const v1, 0x7f121bb2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget-object v0, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;->c:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;->e:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;->c:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;->e:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;->d:Landroid/view/View;

    invoke-static {}, Lj8/g;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setOnDescBackListener(Lcom/miui/gamebooster/videobox/view/SettingsDescLayout$d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;->g:Lcom/miui/gamebooster/videobox/view/SettingsDescLayout$d;

    return-void
.end method
