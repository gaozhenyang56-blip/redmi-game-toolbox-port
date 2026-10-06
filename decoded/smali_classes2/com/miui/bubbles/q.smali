.class public final synthetic Lcom/miui/bubbles/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/bubbles/BubbleStackView$2;

.field public final synthetic b:Lcom/miui/bubbles/Bubble;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/bubbles/BubbleStackView$2;Lcom/miui/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/bubbles/q;->a:Lcom/miui/bubbles/BubbleStackView$2;

    iput-object p2, p0, Lcom/miui/bubbles/q;->b:Lcom/miui/bubbles/Bubble;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/q;->a:Lcom/miui/bubbles/BubbleStackView$2;

    iget-object v1, p0, Lcom/miui/bubbles/q;->b:Lcom/miui/bubbles/Bubble;

    invoke-static {v0, v1}, Lcom/miui/bubbles/BubbleStackView$2;->a(Lcom/miui/bubbles/BubbleStackView$2;Lcom/miui/bubbles/Bubble;)V

    return-void
.end method
