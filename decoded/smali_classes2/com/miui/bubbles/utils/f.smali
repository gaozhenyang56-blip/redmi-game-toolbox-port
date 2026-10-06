.class public final synthetic Lcom/miui/bubbles/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/bubbles/utils/f;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/miui/bubbles/utils/f;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/utils/f;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/miui/bubbles/utils/f;->b:Z

    invoke-static {v0, v1}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->f(Ljava/lang/String;Z)V

    return-void
.end method
