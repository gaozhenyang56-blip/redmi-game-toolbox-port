.class public final synthetic Lcom/miui/bubbles/views/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/bubbles/views/BubbleMessageView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/bubbles/views/BubbleMessageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/bubbles/views/e;->a:Lcom/miui/bubbles/views/BubbleMessageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/views/e;->a:Lcom/miui/bubbles/views/BubbleMessageView;

    invoke-static {v0}, Lcom/miui/bubbles/views/BubbleMessageView;->c(Lcom/miui/bubbles/views/BubbleMessageView;)V

    return-void
.end method
