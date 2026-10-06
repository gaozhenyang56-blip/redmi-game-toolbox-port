.class public Ll2/e$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:J

.field public g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll2/e$c;->a:Ljava/lang/String;

    iput-object p2, p0, Ll2/e$c;->b:Ljava/lang/String;

    iput p3, p0, Ll2/e$c;->c:I

    iput p4, p0, Ll2/e$c;->d:I

    iput p5, p0, Ll2/e$c;->e:I

    iput-wide p6, p0, Ll2/e$c;->f:J

    iput p8, p0, Ll2/e$c;->g:I

    return-void
.end method
