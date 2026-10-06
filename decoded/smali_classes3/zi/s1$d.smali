.class public Lzi/s1$d;
.super Lzi/s1$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzi/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private h:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0, p1}, Lzi/s1$a;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lzi/s1$d;->h:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public e(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    iget-object p1, p0, Lzi/s1$a;->a:Ljava/lang/String;

    iget-object v0, p0, Lzi/s1$d;->h:Landroid/content/ContentValues;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method
