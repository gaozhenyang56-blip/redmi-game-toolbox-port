.class public final synthetic Lk3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/miui/apppredict/activity/AppClassificationActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/apppredict/activity/AppClassificationActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/c;->a:Lcom/miui/apppredict/activity/AppClassificationActivity;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lk3/c;->a:Lcom/miui/apppredict/activity/AppClassificationActivity;

    invoke-static {v0, p1, p2}, Lcom/miui/apppredict/activity/AppClassificationActivity;->l0(Lcom/miui/apppredict/activity/AppClassificationActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
