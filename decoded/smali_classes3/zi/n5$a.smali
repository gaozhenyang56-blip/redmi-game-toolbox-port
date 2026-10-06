.class Lzi/n5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzi/n5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:Lzi/n5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzi/n5;

    invoke-direct {v0}, Lzi/n5;-><init>()V

    sput-object v0, Lzi/n5$a;->a:Lzi/n5;

    return-void
.end method
