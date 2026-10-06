.class public Ll2/i$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:I

.field public g:J

.field public h:I

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;IILjava/lang/String;IJILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ll2/i$c;->a:I

    iput-object p2, p0, Ll2/i$c;->b:Ljava/lang/String;

    iput p3, p0, Ll2/i$c;->c:I

    iput p4, p0, Ll2/i$c;->d:I

    iput-object p5, p0, Ll2/i$c;->e:Ljava/lang/String;

    iput p6, p0, Ll2/i$c;->f:I

    iput-wide p7, p0, Ll2/i$c;->g:J

    iput p9, p0, Ll2/i$c;->h:I

    iput-object p10, p0, Ll2/i$c;->i:Ljava/lang/String;

    return-void
.end method
