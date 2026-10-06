.class public abstract Lcom/miui/antispam/policy/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/policy/a$b;,
        Lcom/miui/antispam/policy/a$a;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mJudge:Lh2/b;

.field protected mPc:Lcom/miui/antispam/policy/a$b;

.field protected mPolicyDesc:Lh2/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/antispam/policy/a$b;Lh2/b;Lh2/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/antispam/policy/a;->mPc:Lcom/miui/antispam/policy/a$b;

    iput-object p3, p0, Lcom/miui/antispam/policy/a;->mJudge:Lh2/b;

    iput-object p4, p0, Lcom/miui/antispam/policy/a;->mPolicyDesc:Lh2/e;

    return-void
.end method


# virtual methods
.method public abstract dbQuery(Lh2/c;)Lcom/miui/antispam/policy/a$a;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

.method public abstract handleData(Lh2/c;)Lcom/miui/antispam/policy/a$a;
.end method
