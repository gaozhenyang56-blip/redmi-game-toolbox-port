.class public Lcom/miui/gamebooster/beauty/conversation/view/GestureEffectView;
.super Le6/a;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Le6/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "GestureEffectView"

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/conversation/view/GestureEffectView;->c:Ljava/lang/String;

    const p1, 0x7f1205b4

    iput p1, p0, Le6/a;->b:I

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 2

    invoke-super {p0}, Le6/a;->b()V

    const v0, 0x7f0b047b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {}, Lx5/p;->t0()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-static {p1}, Lx5/p;->u1(Ljava/lang/String;)V

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object p1

    invoke-virtual {p1}, Lx5/p;->T()Lx5/e;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lx5/e;->l(Z)V

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCheckedChanged :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GestureEffectView"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
