.class public final synthetic Lcom/miui/bubbles/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/bubbles/BubbleStackView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/bubbles/m;->a:Lcom/miui/bubbles/BubbleStackView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/m;->a:Lcom/miui/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/miui/bubbles/BubbleStackView;->c(Lcom/miui/bubbles/BubbleStackView;)V

    return-void
.end method
