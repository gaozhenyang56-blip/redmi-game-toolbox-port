.class public Lwm/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lbl/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbl/n<",
            "Lwm/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwm/a$a;

    invoke-direct {v0}, Lwm/a$a;-><init>()V

    sput-object v0, Lwm/a;->b:Lbl/n;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lwm/a;->a:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lwm/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lwm/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lwm/a;
    .locals 1

    sget-object v0, Lwm/a;->b:Lbl/n;

    invoke-virtual {v0, p0}, Lbl/n;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lwm/a;

    return-object p0
.end method


# virtual methods
.method public b(Landroid/widget/EditText;)V
    .locals 2

    iget-object v0, p0, Lwm/a;->a:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    return-void
.end method

.method public c(Landroid/widget/EditText;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lwm/a;->a:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    iget-object v0, p0, Lwm/a;->a:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
