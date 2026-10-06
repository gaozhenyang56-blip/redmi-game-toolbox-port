.class Lcom/miui/securityscan/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/miui/securityscan/e;->a:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-wide v0, p0, Lcom/miui/securityscan/e;->a:J

    invoke-static {v0, v1}, Lpf/g;->E(J)V

    return-void
.end method
