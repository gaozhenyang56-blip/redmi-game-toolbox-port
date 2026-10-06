.class Lde/i$m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "m"
.end annotation


# static fields
.field public static a:Lde/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lde/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lde/i;-><init>(Lde/i$c;)V

    sput-object v0, Lde/i$m;->a:Lde/i;

    return-void
.end method
