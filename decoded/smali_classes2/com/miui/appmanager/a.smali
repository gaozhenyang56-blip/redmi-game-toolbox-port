.class public Lcom/miui/appmanager/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:J


# direct methods
.method constructor <init>(JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/miui/appmanager/a;->b:J

    iput-wide p3, p0, Lcom/miui/appmanager/a;->a:J

    iput-wide p5, p0, Lcom/miui/appmanager/a;->c:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/appmanager/a;->c:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/appmanager/a;->b:J

    return-wide v0
.end method
