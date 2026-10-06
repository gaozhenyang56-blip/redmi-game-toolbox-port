.class public final synthetic Lcom/miui/bubbles/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/bubbles/Bubble;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/bubbles/utils/a;->a:Lcom/miui/bubbles/Bubble;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/utils/a;->a:Lcom/miui/bubbles/Bubble;

    invoke-static {v0}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->a(Lcom/miui/bubbles/Bubble;)V

    return-void
.end method
