.class public final synthetic Lcom/miui/bubbles/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/bubbles/BubbleStackView;

.field public final synthetic b:Lcom/miui/bubbles/Bubble;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/bubbles/BubbleStackView;Lcom/miui/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/bubbles/j;->a:Lcom/miui/bubbles/BubbleStackView;

    iput-object p2, p0, Lcom/miui/bubbles/j;->b:Lcom/miui/bubbles/Bubble;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/j;->a:Lcom/miui/bubbles/BubbleStackView;

    iget-object v1, p0, Lcom/miui/bubbles/j;->b:Lcom/miui/bubbles/Bubble;

    invoke-static {v0, v1}, Lcom/miui/bubbles/BubbleStackView;->a(Lcom/miui/bubbles/BubbleStackView;Lcom/miui/bubbles/Bubble;)V

    return-void
.end method
