.class public final synthetic La6/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:La6/h;

.field public final synthetic b:Lc6/h;

.field public final synthetic c:Lmiuix/slidingwidget/widget/SlidingButton;


# direct methods
.method public synthetic constructor <init>(La6/h;Lc6/h;Lmiuix/slidingwidget/widget/SlidingButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La6/g;->a:La6/h;

    iput-object p2, p0, La6/g;->b:Lc6/h;

    iput-object p3, p0, La6/g;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, La6/g;->a:La6/h;

    iget-object v1, p0, La6/g;->b:Lc6/h;

    iget-object v2, p0, La6/g;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-static {v0, v1, v2, p1, p2}, La6/h;->f(La6/h;Lc6/h;Lmiuix/slidingwidget/widget/SlidingButton;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
