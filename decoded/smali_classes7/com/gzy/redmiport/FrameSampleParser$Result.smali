.class public final Lcom/gzy/redmiport/FrameSampleParser$Result;
.super Ljava/lang/Object;
.source "FrameSampleParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gzy/redmiport/FrameSampleParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final count:I

.field public final fps:J

.field public final last:J

.field public final layer:Ljava/lang/String;

.field public final reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JJILjava/lang/String;)V
    .registers 8

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gzy/redmiport/FrameSampleParser$Result;->layer:Ljava/lang/String;

    iput-wide p2, p0, Lcom/gzy/redmiport/FrameSampleParser$Result;->fps:J

    iput-wide p4, p0, Lcom/gzy/redmiport/FrameSampleParser$Result;->last:J

    iput p6, p0, Lcom/gzy/redmiport/FrameSampleParser$Result;->count:I

    iput-object p7, p0, Lcom/gzy/redmiport/FrameSampleParser$Result;->reason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public available()Z
    .registers 5

    .line 9
    iget-wide v0, p0, Lcom/gzy/redmiport/FrameSampleParser$Result;->fps:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method
