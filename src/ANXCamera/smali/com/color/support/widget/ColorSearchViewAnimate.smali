.class public Lcom/color/support/widget/ColorSearchViewAnimate;
.super Landroid/widget/LinearLayout;
.source "ColorSearchViewAnimate.java"

# interfaces
.implements Landroidx/appcompat/view/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;,
        Lcom/color/support/widget/ColorSearchViewAnimate$a;,
        Lcom/color/support/widget/ColorSearchViewAnimate$b;,
        Lcom/color/support/widget/ColorSearchViewAnimate$c;
    }
.end annotation


# static fields
.field private static a:Z = false


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Lcolor/support/v7/widget/SearchView;

.field private e:Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

.field private f:Landroid/widget/LinearLayout;

.field private volatile g:Lcom/color/support/widget/ColorSearchViewAnimate$a;

.field private h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/color/support/widget/ColorSearchViewAnimate$c;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/color/support/widget/ColorSearchViewAnimate$b;

.field private k:J

.field private l:Landroid/view/MenuItem;

.field private m:Lcolor/support/v7/widget/Toolbar;

.field private n:Z

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private a(I)I
    .locals 0

    return p1
.end method

.method private a(II)V
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/ColorSearchViewAnimate$c;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/color/support/widget/ColorSearchViewAnimate$c;->a(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    and-int/lit8 p2, p2, 0x70

    const/16 v1, 0x10

    const/16 v2, 0xf

    if-eq p2, v1, :cond_3

    const/16 v1, 0x30

    if-eq p2, v1, :cond_2

    const/16 v1, 0x50

    if-eq p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0xc

    goto :goto_0

    :cond_2
    const/16 v2, 0xa

    :cond_3
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/color/support/widget/ColorSearchViewAnimate;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->c()V

    return-void
.end method

.method static synthetic a(Lcom/color/support/widget/ColorSearchViewAnimate;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ColorSearchViewAnimate;->a(II)V

    return-void
.end method

.method static synthetic b(Lcom/color/support/widget/ColorSearchViewAnimate;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->d()V

    return-void
.end method

.method static synthetic c(Lcom/color/support/widget/ColorSearchViewAnimate;)J
    .locals 2

    iget-wide v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->k:J

    return-wide v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->d:Lcolor/support/v7/widget/SearchView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView;->getSearchAutoComplete()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcom/color/support/widget/ColorSearchViewAnimate$b;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->j:Lcom/color/support/widget/ColorSearchViewAnimate$b;

    return-object p0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->d:Lcolor/support/v7/widget/SearchView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView;->clearFocus()V

    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->d:Lcolor/support/v7/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->d:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->d:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView;->getSearchAutoComplete()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcolor/support/v7/widget/SearchView;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->d:Lcolor/support/v7/widget/SearchView;

    return-object p0
.end method

.method private getAnimatorHelper()Lcom/color/support/widget/ColorSearchViewAnimate$a;
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->g:Lcom/color/support/widget/ColorSearchViewAnimate$a;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->g:Lcom/color/support/widget/ColorSearchViewAnimate$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/color/support/widget/ColorSearchViewAnimate$a;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ColorSearchViewAnimate$a;-><init>(Lcom/color/support/widget/ColorSearchViewAnimate;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->g:Lcom/color/support/widget/ColorSearchViewAnimate$a;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->g:Lcom/color/support/widget/ColorSearchViewAnimate$a;

    return-object v0
.end method

.method private setMenuItem(Landroid/view/MenuItem;)V
    .locals 1

    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->l:Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->l:Landroid/view/MenuItem;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->m:Lcolor/support/v7/widget/Toolbar;

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->l:Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private setToolBarAlpha(F)V
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->m:Lcolor/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcolor/support/v7/widget/Toolbar;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->m:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1}, Lcolor/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setToolBarChildVisibility(I)V
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->m:Lcolor/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcolor/support/v7/widget/Toolbar;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->m:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1}, Lcolor/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->d:Lcolor/support/v7/widget/SearchView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView;->getSearchAutoComplete()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sget-boolean v1, Lcom/color/support/widget/ColorSearchViewAnimate;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openSoftInput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorSearchViewAnimate"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->c()V

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->d:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p1}, Lcolor/support/v7/widget/SearchView;->getSearchAutoComplete()Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->d:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p1}, Lcolor/support/v7/widget/SearchView;->getSearchAutoComplete()Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public getAnimatorDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->k:J

    return-wide v0
.end method

.method public getGravity()I
    .locals 1

    iget v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->o:I

    return v0
.end method

.method public getSearchState()I
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getSearchView()Lcolor/support/v7/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->d:Lcolor/support/v7/widget/SearchView;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->a(I)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->f:Landroid/widget/LinearLayout;

    iget p2, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->o:I

    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ColorSearchViewAnimate;->a(Landroid/view/View;I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->d:Lcolor/support/v7/widget/SearchView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/SearchView;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->e:Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->setEnabled(Z)V

    :cond_4
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->o:I

    if-eq v0, p1, :cond_2

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x10

    :cond_1
    iput p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->o:I

    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->f:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->o:I

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->a(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method public setIconCanAnimate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->n:Z

    return-void
.end method

.method public setOnAnimationListener(Lcom/color/support/widget/ColorSearchViewAnimate$b;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->j:Lcom/color/support/widget/ColorSearchViewAnimate$b;

    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->d:Lcolor/support/v7/widget/SearchView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
