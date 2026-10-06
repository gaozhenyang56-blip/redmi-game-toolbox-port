.class public final synthetic Lcom/miui/bubbles/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/bubbles/BubbleStackView;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/bubbles/BubbleStackView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/bubbles/l;->a:Lcom/miui/bubbles/BubbleStackView;

    iput-boolean p2, p0, Lcom/miui/bubbles/l;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/l;->a:Lcom/miui/bubbles/BubbleStackView;

    iget-boolean v1, p0, Lcom/miui/bubbles/l;->b:Z

    invoke-static {v0, v1}, Lcom/miui/bubbles/BubbleStackView;->f(Lcom/miui/bubbles/BubbleStackView;Z)V

    return-void
.end method
