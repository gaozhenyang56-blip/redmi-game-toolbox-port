.class public Ll2/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:J

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:I


# direct methods
.method public constructor <init>(JILjava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ll2/d$c;->a:J

    iput p3, p0, Ll2/d$c;->b:I

    iput-object p4, p0, Ll2/d$c;->c:Ljava/lang/String;

    iput p5, p0, Ll2/d$c;->d:I

    iput-object p6, p0, Ll2/d$c;->e:Ljava/lang/String;

    iput p7, p0, Ll2/d$c;->f:I

    return-void
.end method
