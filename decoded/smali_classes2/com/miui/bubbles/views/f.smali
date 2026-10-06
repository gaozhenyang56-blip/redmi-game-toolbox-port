.class public final synthetic Lcom/miui/bubbles/views/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/bubbles/views/BubbleMessageView;

.field public final synthetic b:Landroid/graphics/PointF;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/bubbles/views/BubbleMessageView;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/bubbles/views/f;->a:Lcom/miui/bubbles/views/BubbleMessageView;

    iput-object p2, p0, Lcom/miui/bubbles/views/f;->b:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/views/f;->a:Lcom/miui/bubbles/views/BubbleMessageView;

    iget-object v1, p0, Lcom/miui/bubbles/views/f;->b:Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcom/miui/bubbles/views/BubbleMessageView;->d(Lcom/miui/bubbles/views/BubbleMessageView;Landroid/graphics/PointF;)V

    return-void
.end method
