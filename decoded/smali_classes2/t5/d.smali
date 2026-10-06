.class public final synthetic Lt5/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lt5/i;

.field public final synthetic b:Lcom/miui/gamebooster/model/c;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lt5/i;Lcom/miui/gamebooster/model/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt5/d;->a:Lt5/i;

    iput-object p2, p0, Lt5/d;->b:Lcom/miui/gamebooster/model/c;

    iput p3, p0, Lt5/d;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lt5/d;->a:Lt5/i;

    iget-object v1, p0, Lt5/d;->b:Lcom/miui/gamebooster/model/c;

    iget v2, p0, Lt5/d;->c:I

    invoke-static {v0, v1, v2}, Lt5/i;->d(Lt5/i;Lcom/miui/gamebooster/model/c;I)V

    return-void
.end method
