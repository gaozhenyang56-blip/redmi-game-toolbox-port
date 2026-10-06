.class public final synthetic Lcom/miui/bubbles/views/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/bubbles/views/BubbleMessageView;

.field public final synthetic b:Lcom/miui/bubbles/Bubble$FlyoutMessage;

.field public final synthetic c:Landroid/graphics/PointF;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/bubbles/views/BubbleMessageView;Lcom/miui/bubbles/Bubble$FlyoutMessage;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/bubbles/views/d;->a:Lcom/miui/bubbles/views/BubbleMessageView;

    iput-object p2, p0, Lcom/miui/bubbles/views/d;->b:Lcom/miui/bubbles/Bubble$FlyoutMessage;

    iput-object p3, p0, Lcom/miui/bubbles/views/d;->c:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/bubbles/views/d;->a:Lcom/miui/bubbles/views/BubbleMessageView;

    iget-object v1, p0, Lcom/miui/bubbles/views/d;->b:Lcom/miui/bubbles/Bubble$FlyoutMessage;

    iget-object v2, p0, Lcom/miui/bubbles/views/d;->c:Landroid/graphics/PointF;

    invoke-static {v0, v1, v2}, Lcom/miui/bubbles/views/BubbleMessageView;->a(Lcom/miui/bubbles/views/BubbleMessageView;Lcom/miui/bubbles/Bubble$FlyoutMessage;Landroid/graphics/PointF;)V

    return-void
.end method
