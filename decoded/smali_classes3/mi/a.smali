.class public Lmi/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lmi/e;

.field public static final b:Lmi/e;

.field public static final c:I

.field public static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmi/e;

    const-string v1, "1.9.3"

    invoke-direct {v0, v1}, Lmi/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmi/a;->a:Lmi/e;

    new-instance v0, Lmi/e;

    const-string v1, "1.3.0"

    invoke-direct {v0, v1}, Lmi/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmi/a;->b:Lmi/e;

    sget v0, Lni/n;->d:I

    mul-int/lit8 v0, v0, 0x1e

    sput v0, Lmi/a;->c:I

    sget v0, Lni/n;->c:I

    sput v0, Lmi/a;->d:I

    return-void
.end method
