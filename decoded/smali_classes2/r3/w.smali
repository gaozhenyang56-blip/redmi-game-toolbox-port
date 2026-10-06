.class public final synthetic Lr3/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lr3/z;

.field public final synthetic b:Lmiuix/slidingwidget/widget/SlidingSwitch;

.field public final synthetic c:Lcom/miui/autotask/bean/q;

.field public final synthetic d:Lr3/z$e;


# direct methods
.method public synthetic constructor <init>(Lr3/z;Lmiuix/slidingwidget/widget/SlidingSwitch;Lcom/miui/autotask/bean/q;Lr3/z$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/w;->a:Lr3/z;

    iput-object p2, p0, Lr3/w;->b:Lmiuix/slidingwidget/widget/SlidingSwitch;

    iput-object p3, p0, Lr3/w;->c:Lcom/miui/autotask/bean/q;

    iput-object p4, p0, Lr3/w;->d:Lr3/z$e;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    iget-object v0, p0, Lr3/w;->a:Lr3/z;

    iget-object v1, p0, Lr3/w;->b:Lmiuix/slidingwidget/widget/SlidingSwitch;

    iget-object v2, p0, Lr3/w;->c:Lcom/miui/autotask/bean/q;

    iget-object v3, p0, Lr3/w;->d:Lr3/z$e;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lr3/z;->k(Lr3/z;Lmiuix/slidingwidget/widget/SlidingSwitch;Lcom/miui/autotask/bean/q;Lr3/z$e;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
