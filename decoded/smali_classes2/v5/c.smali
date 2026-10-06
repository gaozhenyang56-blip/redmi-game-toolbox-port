.class public Lv5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq6/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq6/b<",
        "Lcom/miui/gamebooster/model/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private c:Z

.field private final d:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Lv5/c;-><init>(ZZLandroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    return-void
.end method

.method public constructor <init>(ZZLandroid/widget/CompoundButton$OnCheckedChangeListener;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lv5/c;->a:Z

    iput-boolean p2, p0, Lv5/c;->b:Z

    iput-object p3, p0, Lv5/c;->d:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iput-boolean p4, p0, Lv5/c;->c:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    iget-boolean v0, p0, Lv5/c;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0e019d

    goto :goto_0

    :cond_0
    const v0, 0x7f0e019c

    :goto_0
    return v0
.end method

.method public bridge synthetic c(Lq6/i;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lcom/miui/gamebooster/model/d;

    invoke-virtual {p0, p1, p2, p3}, Lv5/c;->f(Lq6/i;Lcom/miui/gamebooster/model/d;I)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lcom/miui/gamebooster/model/d;

    invoke-virtual {p0, p1, p2}, Lv5/c;->g(Lcom/miui/gamebooster/model/d;I)Z

    move-result p1

    return p1
.end method

.method public synthetic e()Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lq6/a;->c(Lq6/b;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public f(Lq6/i;Lcom/miui/gamebooster/model/d;I)V
    .locals 5

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p3}, Lx4/z1;->m(I)I

    move-result p3

    const v0, 0x7f0806a8

    const v1, 0x7f0b0506

    const/16 v2, 0x3e7

    if-ne p3, v2, :cond_0

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "pkg_icon_xspace://"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "pkg_icon://"

    :goto_0
    invoke-virtual {v2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v1}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget-object v3, Lx4/o0;->f:Lrh/c;

    invoke-virtual {p1}, Lq6/i;->d()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p3, v2, v3, v0}, Lx4/o0;->f(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/d;->c()Ljava/lang/CharSequence;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const v0, 0x7f0b0bc9

    invoke-virtual {p1, v0, p3}, Lq6/i;->f(ILjava/lang/String;)Lq6/i;

    const p3, 0x7f0b0a9f

    invoke-virtual {p1, p3}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    instance-of v2, p3, Lmiuix/slidingwidget/widget/SlidingButton;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v2, p3

    check-cast v2, Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v2, v3}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/d;->d()Z

    move-result v3

    invoke-virtual {v2, v3}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object v3, p0, Lv5/c;->d:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    :cond_1
    instance-of v2, p3, Lcom/miui/gamebooster/widget/SwitchButton;

    if-eqz v2, :cond_2

    move-object v2, p3

    check-cast v2, Lcom/miui/gamebooster/widget/SwitchButton;

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/widget/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/d;->d()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/widget/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    iget-object v3, p0, Lv5/c;->d:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/widget/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    :goto_1
    iget-boolean v2, p0, Lv5/c;->c:Z

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/d;->e()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p3, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1, v0}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/d;->e()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1, v1}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/d;->e()Z

    move-result p2

    if-eqz p2, :cond_3

    const/high16 p2, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_3
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    return-void
.end method

.method public g(Lcom/miui/gamebooster/model/d;I)Z
    .locals 0

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
