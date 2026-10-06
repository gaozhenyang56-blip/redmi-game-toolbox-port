.class public final synthetic Lcom/miui/bubbles/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/bubbles/BubbleStackView;

.field public final synthetic b:Lcom/miui/bubbles/views/BubbleMessageView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/bubbles/BubbleStackView;Lcom/miui/bubbles/views/BubbleMessageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/bubbles/p;->a:Lcom/miui/bubbles/BubbleStackView;

    iput-object p2, p0, Lcom/miui/bubbles/p;->b:Lcom/miui/bubbles/views/BubbleMessageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/p;->a:Lcom/miui/bubbles/BubbleStackView;

    iget-object v1, p0, Lcom/miui/bubbles/p;->b:Lcom/miui/bubbles/views/BubbleMessageView;

    invoke-static {v0, v1}, Lcom/miui/bubbles/BubbleStackView;->d(Lcom/miui/bubbles/BubbleStackView;Lcom/miui/bubbles/views/BubbleMessageView;)V

    return-void
.end method
