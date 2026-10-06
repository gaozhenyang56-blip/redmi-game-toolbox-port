.class public Lzi/s1$c;
.super Lzi/s1$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzi/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private h:Ljava/lang/String;

.field protected i:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lzi/s1$a;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lzi/s1$c;->h:Ljava/lang/String;

    iput-object p3, p0, Lzi/s1$c;->i:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public e(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    iget-object p1, p0, Lzi/s1$a;->a:Ljava/lang/String;

    iget-object v0, p0, Lzi/s1$c;->h:Ljava/lang/String;

    iget-object v1, p0, Lzi/s1$c;->i:[Ljava/lang/String;

    invoke-virtual {p2, p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
