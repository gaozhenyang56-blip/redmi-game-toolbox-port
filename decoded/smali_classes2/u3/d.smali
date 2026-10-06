.class public final synthetic Lu3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lu3/h;

.field public final synthetic b:Lcom/gzy/redmiport/compat/process/ForegroundInfo;


# direct methods
.method public synthetic constructor <init>(Lu3/h;Lcom/gzy/redmiport/compat/process/ForegroundInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/d;->a:Lu3/h;

    iput-object p2, p0, Lu3/d;->b:Lcom/gzy/redmiport/compat/process/ForegroundInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lu3/d;->a:Lu3/h;

    iget-object v1, p0, Lu3/d;->b:Lcom/gzy/redmiport/compat/process/ForegroundInfo;

    invoke-static {v0, v1}, Lu3/h;->b(Lu3/h;Lcom/gzy/redmiport/compat/process/ForegroundInfo;)V

    return-void
.end method
